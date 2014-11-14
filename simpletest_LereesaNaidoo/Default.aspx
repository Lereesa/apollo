<%@ Page Title="Apollo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="simpletest_LereesaNaidoo._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Out of this world book and stationary store.</h2>
            </hgroup>
            <p>
                We have everything out of a book worm's dream and everything a book writer needs. If we don't have it no one will.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We are the best at:</h3>
    <ol class="round">
        <li class="one">
            <h5>Great Quality and Prices</h5>
            Our goods are of great quality and we do not over price.
        </li>
        <li class="two">
            <h5>Customer Service</h5>
            You will never leave without a smile on your face.
        </li>
        <li class="three">
            <h5>Having Everything you are looking for</h5>
            We make it our priority to bring you all the latest books and stationary. If we do not have it we will order it and give it away at a discounted rate.
        </li>
    </ol>
</asp:Content>
