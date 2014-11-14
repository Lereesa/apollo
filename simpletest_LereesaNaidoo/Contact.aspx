<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="simpletest_LereesaNaidoo.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1> <br />
        <h2>Please feel free to contact us.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>(011)847-8473</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>Dan: 383 847 8292</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span>support@apollo.com</span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span>marketing@apollo.com</span>
        </p>
        <p>
            <span class="label">General(store):</span>
            <span>general@apollo.com</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            94 Storybook Lane<br />
            Fairyland
        </p>
    </section>
</asp:Content>