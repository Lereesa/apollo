<%@ Page Title="Customers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="addcus.aspx.cs" Inherits="simpletest_LereesaNaidoo.addcus" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Add a Customer.</h2>
    </hgroup>

     
    <br />
    <section class="float-left">
        <b><a href="Customers.aspx" runat="server" style="text-decoration: none"> Back to Customers</a></b>
    </section>
    <br />
    <br />

    
    <div class="row">
              <div class="span6">
                  
                <label>Name:</label> <asp:Textbox runat="server" style="width:30%"  class="input_field" ID="txtname" maxlength="40" />
                <div class="cleaner"></div>
                <label>Surname:</label> <asp:Textbox runat="server" style="width:30%"  class="input_field" id="txtsurname" maxlength="40" />
                <div class="cleaner"></div>
                  <label>Account Number: </label> <asp:Textbox runat="server" style="width:30%"  class="input_field" id="txtaccount" maxlength="40" />
                <div class="cleaner"></div>
              </div>
        
               <asp:Button runat="server" Text="Add Customer" ID="btnaddcustomer" OnClick="btnaddcustomer_Click"/>
        <asp:Label runat="server" ID="lblerrorsample" style="color:red"></asp:Label>
        </div>
    

        
</asp:Content>
