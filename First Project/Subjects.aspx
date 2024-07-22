<%@ Page Title="" Language="VB" MasterPageFile="~/StudentMaster.master" AutoEventWireup="false" CodeFile="Subjects.aspx.vb" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: uppercase; text-decoration: underline; color: #800080">
        Select Subjects</p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF6699">
        Core Subjects:</p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF6699">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Size="16px" 
            ForeColor="Blue">
            <asp:ListItem>Computer Network</asp:ListItem>
            <asp:ListItem>Web Framework and Services</asp:ListItem>
            <asp:ListItem>Asp.Net</asp:ListItem>
            <asp:ListItem>Advance Web Desining</asp:ListItem>
            <asp:ListItem>Network Technology</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF6699">
        Elective Subjects:</p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF6699;">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="16px" 
            ForeColor="Blue">
            <asp:ListItem>N.C.C</asp:ListItem>
            <asp:ListItem>N.C.A</asp:ListItem>
            <asp:ListItem>P.T.</asp:ListItem>
            <asp:ListItem>Scope</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF6699; height: 26px;">
        <asp:Button ID="confirm" runat="server" Text="Confirm" />
    </p>
    <p align="C" 
        style="font-family: 'Arial Black'; font-size: 18px; font-weight: bolder; text-transform: capitalize; color: #FF0000; height: 26px;">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
</asp:Content>

