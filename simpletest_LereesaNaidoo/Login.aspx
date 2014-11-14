<%@ Page Title="Login" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="simpletest_LereesaNaidoo.Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Use the form below to login into your account.</h2>
    </hgroup>
       
            
                <p>
            <a id="A1" href="Register.aspx" runat="server" style="text-decoration-line:none">Register</a>
            if you don't have an account.
        </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <div class="row">
              <div class="span6">
              
               
                 <label >Email: <asp:Label ID="lblemailmessage" style="color:red" runat="server"></asp:Label></label> <asp:Textbox runat="server" style="width:30%" TextMode="Email" class="input_field" id="Email" maxlength="40"></asp:Textbox>
                <div class="cleaner"></div>
                  <label>Password: <asp:Label runat="server" style="color:red" ID="lblmessage"></asp:Label></label> <asp:Textbox runat="server" style="width:30%" TextMode="Password" class="input_field" id="Password" maxlength="40"></asp:Textbox> 
                <div class="cleaner"></div>
                  

                  <asp:Button runat="server" Text="Login" ID="btnlogin" OnClick="btnlogin_Click1"/>
                  </div>
                        </div>
                       
                 
               
               
</asp:Content>
