<%@ Page Title="" Language="VB" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="false" CodeFile="LoginPage.aspx.vb" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .style15
        {
            width: 202px;
        }
        .style16
        {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Login Here</p>
    <table class="style13">
        <tr>
            <td class="style15">
                User Name:</td>
            <td class="style16">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Password :</td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                User Type :</td>
            <td class="style16">
                <asp:ListBox ID="ListBox1" runat="server" Width="164px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>faculty</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:ListBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style16">
                <asp:Button ID="btnLogin" runat="server" Height="30px" Text="Login" 
                    Width="160px" />
            </td>
            <td>
                <asp:Button ID="rglInfo" runat="server" Text="Display Information" 
                    Width="326px" />
                <br />
                <asp:GridView ID="regInfo" runat="server" Width="154px">
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

