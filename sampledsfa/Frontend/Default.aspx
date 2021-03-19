<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Frontend.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="section">
        <div>
            <h1>
                <asp:Literal ID="ltTitle" runat="server"></asp:Literal></h1>
            <p>
                <asp:Literal ID="ltDescription" runat="server"></asp:Literal></p>
            <span>
                <a class="first" href="index.html">Take a Tour</a>
                <a href="register.html">Register</a>
            </span>
        </div>
        <div id="figure">
            <a href="index.html">
                <img src="Template/images/little-girl-blowing-wind-mill.jpg" alt="Image" /></a>
            <span></span>
        </div>
        <span class="background"></span>
    </div>
    <div id="featured">
        <ul>
            <asp:Repeater ID="reImageBlog" runat="server">
                <ItemTemplate>
                    <li class="first">
                        <a href="powerearth.html">
                            <img src="<%# Eval("src") %>" alt="Image" /></a>
                        <span></span>
                        <p><%# Eval("description") %></p>
                        <a class="link" href="powerearth.html"><%# Eval("redirect") %></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
