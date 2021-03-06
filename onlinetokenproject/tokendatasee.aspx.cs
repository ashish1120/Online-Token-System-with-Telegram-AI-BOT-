﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace tokenproject
{
    public partial class tokendatasee : System.Web.UI.Page
    {
        public static string constr = ConfigurationManager.ConnectionStrings["tokendata"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Userid"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!this.IsPostBack)
            {
                this.SearchCustomers();
            }
          

        }
        private void SearchCustomers()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        string sql = "SELECT * FROM token1 ";
                        if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
                        {
                            sql += " WHERE date=@date AND token_no LIKE @token_no + '%'";
                            cmd.Parameters.AddWithValue("@token_no", TextBox1.Text.Trim());
                            cmd.Parameters.AddWithValue("@date", TextBox2.Text.Trim());
                        }
                        cmd.CommandText = sql;
                        cmd.Connection = con;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex) { Console.WriteLine(ex.Message); }
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.SearchCustomers();
        }

        protected void Search(object sender, EventArgs e)
        {
            this.SearchCustomers();
        }
        protected void searchdate(object sender, EventArgs e)
        {
            this.SearchCustomers();
        }

    }

}