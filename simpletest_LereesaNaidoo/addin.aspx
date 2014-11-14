<%@ Page Title="Invoice" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="addin.aspx.cs" Inherits="simpletest_LereesaNaidoo.addin" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


   <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Add an Invoice to <asp:Label runat="server" ID="cusname"></asp:Label></h2>
    </hgroup>

     
    <br />
    <section class="float-left">
        <b><asp:Label runat="server" ID="back"></asp:Label></b>
    </section>
    <br />
    <br />

    
    <div class="row">
              <div class="span6">
                  <label>Date:</label> <asp:Textbox runat="server" style="width:13%" TextMode="Date" class="input_field" id="txtdate" maxlength="40"></asp:Textbox>
                <div class="cleaner"></div>
                <label>Item:</label> <asp:Textbox runat="server" style="width:30%"  class="input_field" ID="txtitem" maxlength="40" />
                <div class="cleaner"></div>
                <label>Quantity:</label> <asp:Textbox runat="server" style="width:10%"  class="input_field" id="txtquant" maxlength="40" />
                <div class="cleaner"></div>
                  <label>Unit Cost: (In Rands)</label> <asp:Textbox runat="server" style="width:10%"  class="input_field" id="txtcost" maxlength="40" />
                <div class="cleaner"></div>
              </div>
        
               <asp:Button runat="server" Text="Add Invoice" ID="btnaddinvoice" OnClick="btnaddinvoice_Click"/>
        <asp:Label runat="server" ID="lblerrorsample" style="color:red"></asp:Label>
        </div>
    

        
</asp:Content>