<%@ Page Title="Register" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" MasterPageFile="~/Site.Master" Inherits="simpletest_LereesaNaidoo.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Use the form below to create a new account.</h2>
    </hgroup>
       
            
                <p>
            <a id="A1" href="Login.aspx" runat="server" style="text-decoration-line:none">Login</a>
            if you already have an account.
        </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <div class="row">
              <div class="span6">
               <label >User Name:</label> <asp:Textbox runat="server" style="width:30%"  class="input_field" id="UserName" maxlength="40"></asp:Textbox>
                <div class="cleaner"></div>
               
                 <label >Email: <asp:Label ID="lblemailmessage" style="color:red" runat="server"></asp:Label></label> <asp:Textbox runat="server" style="width:30%" type="email" TextMode="Email" id="Email" maxlength="40"></asp:Textbox>
                <div class="cleaner"></div>
                  <label>Password: <asp:Label runat="server" style="color:red" ID="lblmessage"></asp:Label></label> <asp:Textbox runat="server" style="width:30%" TextMode="Password" class="input_field" id="Password" maxlength="40"></asp:Textbox> 
                <div class="cleaner"></div>
                  <label >Confirm Password:</label> <asp:Textbox runat="server" style="width:30%" TextMode="Password" class="input_field" id="ConfirmPassword" maxlength="40"></asp:Textbox>
                <div class="cleaner"></div>

                  <asp:Button runat="server" Text="Register" ID="btnregister" OnClick="btnregister_Click"/>
                  </div>
                        </div>
                       
                 
               
               
</asp:Content>
