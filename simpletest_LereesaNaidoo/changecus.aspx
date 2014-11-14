<%@ Page Title="Customers" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="changecus.aspx.cs" Inherits="simpletest_LereesaNaidoo.changecus" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Make changes to <asp:Label runat="server" ID="cusname"></asp:Label> record.</h2>
    </hgroup>

     
    <br />
    <section class="float-left">
        <b<b><a id="A1" href="Customers.aspx" runat="server" style="text-decoration: none"> Back to Customers</a></b>
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
        
               <asp:Button runat="server" Text="Save Changes" ID="btnsave" OnClick="btnsave_Click" />
        <asp:Label runat="server" ID="lblerrorsample" style="color:red"></asp:Label>
        </div>
    

        
</asp:Content>
