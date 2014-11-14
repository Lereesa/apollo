<%@ Page Title="Customers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="deletecus.aspx.cs" Inherits="simpletest_LereesaNaidoo.deletecus" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Delete a Customer.</h2>
    </hgroup>

     
    <br />
    <section class="float-left">
        <b><a id="A1" href="Customers.aspx" runat="server" style="text-decoration: none"> Back to Customers</a></b>
    </section>
    <br />
    <br />

    
    <div class="row">
              <div class="span6">
                  
                <b><asp:Label runat="server" ID="delcus">Are you sure you would like to delete <asp:Label runat="server" ID="delcust"></asp:Label>? This means 
                    all records of invoices belonging to this customer will be removed as well.
                </asp:Label></b>
              </div>
        
        <table>
            <tr><td>
                <asp:Button runat="server" Text="Delete Customer" ID="btndelcustomer" OnClick="btndelcustomer_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Do Not Delete" ID="btnsavecustomer" OnClick="btnsavecustomer_Click" />
                </td>
            </tr>
        </table>
               
        
        <asp:Label runat="server" ID="lblerrorsample" style="color:red"></asp:Label>
        </div>
    

        
</asp:Content>

