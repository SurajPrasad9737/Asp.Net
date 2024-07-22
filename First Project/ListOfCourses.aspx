<%@ Page Title="" Language="VB" MasterPageFile="~/StudentMaster.master" AutoEventWireup="false" CodeFile="ListOfCourses.aspx.vb" Inherits="ListOfCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
        style="font-family: 'Arial Black'; font-size: 18px; text-decoration: underline; text-transform: uppercase; color: #800000">
        <br />
        List Of Courses</p>
    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="UpperRoman" 
        ForeColor="#0033CC" style="cursor:pointer;">
        <asp:ListItem>BCA(Bachelor of Computer Application</asp:ListItem>
        <asp:ListItem>BBA(Bachelor of Business Adminstrator)</asp:ListItem>
        <asp:ListItem>Bcom(Bachelor of Commerce)</asp:ListItem>
        <asp:ListItem>BA(Bachelor of Arts)</asp:ListItem>
        <asp:ListItem>BEd(Bachelor of Eduction)</asp:ListItem>
        <asp:ListItem>BTech(Bachelor of Technology)</asp:ListItem>
        <asp:ListItem>MA(Master of Arts)</asp:ListItem>
        <asp:ListItem>MCom(Master of Commerce)</asp:ListItem>
        <asp:ListItem>MBA(Master of Business Administrator)</asp:ListItem>
    </asp:BulletedList>
    <p>
    </p>
    
</asp:Content>

