<%@ Page Title="Customers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="viewcus.aspx.cs" Inherits="simpletest_LereesaNaidoo.viewcus" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">



   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2><asp:Label runat="server" ID="cusname"></asp:Label></h2>
    </hgroup>

     
   <br />
    <section class="float-right">
        <b><a id="A1" href="Customers.aspx" runat="server" style="text-decoration: none">Back to Customers</a></b>
    </section>
    <br />
     <section class="float-right">
        <b><a id="A2" href="addin.aspx" runat="server" style="text-decoration: none">Add Invoice</a></b>
    </section>
    
    <br />
    <br />
    

        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

    <table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
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