<%@ Page Title="Customers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Customers.aspx.cs" Inherits="simpletest_LereesaNaidoo.Customers" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">



   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>View a list of customers.</h2>
    </hgroup>

     
   <br />
    <section class="float-right">
        <b><a id="A1" href="addcus.aspx" runat="server" style="text-decoration: none">Add Customer</a></b>
    </section>
    <br />
    <br />
    

        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

    <table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
            <th>Name</th>  
            <th>Surname</th>  
            <th>Account Number</th> 
            <th>Actions</th>
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