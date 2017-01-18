<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebFormAuth.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
    <p>
        Username:
        <asp:textbox id="UserName" runat="server"></asp:textbox>
    </p>
    <p>
        Password:
        <asp:textbox id="Password" runat="server" textmode="Password"></asp:textbox>
    </p>
    <p>
        <asp:checkbox id="RememberMe" runat="server" text="Remember Me" />
    </p>
    <p>
        <asp:button id="LoginButton" runat="server" text="Login" OnClick="LoginButton_Click" />
    </p>
    <p>
        <asp:label id="InvalidCredentialsMessage" runat="server" forecolor="Red" text="Your username or password is invalid. Please try again."
            visible="False"></asp:label>
    </p>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="LoginContent" Visible="false">

                <asp:LoginView ID="LoginView1" runat="server">
                    <LoggedInTemplate>
                        Welcome back,
                        <asp:LoginName ID="LoginName1" runat="server"/>.
                    </LoggedInTemplate>
                    <AnonymousTemplate>
                        Hello Stranger.
                        <asp:HyperLink ID="InkLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                    </AnonymousTemplate>
                </asp:LoginView>
                <br /><br />

            </asp:Content>

