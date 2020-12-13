﻿<%@ Page Title="" Language="C#" MasterPageFile="~/menumaster.Master" AutoEventWireup="true" CodeBehind="misseddatasee.aspx.cs" Inherits="tokenproject.misseddatasee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="page-content--bgf7">  
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card mt-5">
     <div class="card-body">

             Missed Data Detail:<br>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"  OnTextChanged="Search" placeholder="Department"></asp:TextBox>
    <hr size="2">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive m-b-40 table-borderless table-striped" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="OnPaging" PageSize="4">
        <Columns>
            <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150">
            <ItemStyle Width="150px" />
            </asp:BoundField>
              <asp:BoundField DataField="token_no" HeaderText="Token_no" ItemStyle-Width="150">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="counter" HeaderText="Counter" ItemStyle-Width="150">
            <ItemStyle Width="150px" />
            </asp:BoundField>
           <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" ItemStyle-Width="150">
            <ItemStyle Width="150px" />
            </asp:BoundField>
             <asp:BoundField DataField="Operator" HeaderText="operator" ItemStyle-Width="150">
            <ItemStyle Width="150px" />
            </asp:BoundField>
          
        </Columns>
   
    </asp:GridView>
   


</div></div></div></div></div></div>



</asp:Content>
