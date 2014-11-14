<%@ Page Title="Invoice" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Invoice.aspx.cs" Inherits="simpletest_LereesaNaidoo.Invoice" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>View a list of invoices.</h2>
    </hgroup>

     
    <br />
   
    <br />

    
    

        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

    <table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
            <th>Customer</th>
              <th>Account No.</th>
            <th>Date</th>  
            <th>Item</th>  
            <th>Quantity</th> 
            <th>Unit Cost</th>
            <th>Total</th>
          </tr>  
        </thead>  
        <tbody>  
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        </tbody>  
      </table> 

            <script>
                $(document).ready(function () {
                    $('#myTable').dataTable();
                });
            </script>
</asp:Content>