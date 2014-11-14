<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="simpletest_LereesaNaidoo.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Making it easier for business.</h2>
    </hgroup>

    <article>
        <p>        
            This website helps the store keep track of customers and invoices.
        </p>

        <p>        
            By doing so, it will also help keep track of sales and know what is popular.
        </p>

        <p>        
            Knowing that information will help us better our business and customer services.
        </p>
    </article>
       
    
    <aside>
        <img  src="Images/owl2.png" width="200px" height="220px" />
    </aside>
</asp:Content>