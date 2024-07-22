<%@ Page Title="" Language="VB" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
        .style14
        {
            width: 167px;
        }
        .style17
        {
            width: 167px;
            height: 40px;
        }
        .style18
        {
            height: 40px;
        }
        .style19
        {
            width: 167px;
            height: 45px;
        }
        .style20
        {
            height: 45px;
        }
        .style21
        {
            height: 40px;
            width: 110px;
        }
        .style22
        {
            height: 45px;
            width: 110px;
        }
        .style23
        {
            width: 110px;
        }
        .style24
        {
            width: 134px;
            height: 40px;
        }
        .style25
        {
            width: 134px;
            height: 45px;
        }
        .style26
        {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Please Provide your feedback here<table class="style13">
            <tr>
                <td class="style17">
                    Enter Email:</td>
                <td class="style21">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter Email" ForeColor="Red" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid Email" 
                        ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td class="style18">
                </td>
            </tr>
            <tr>
                <td class="style17">
                    Enter Feedback :</td>
                <td class="style21">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="253px"></asp:TextBox>
                </td>
                <td class="style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter Feedback" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                </td>
            </tr>
            <tr>
                <td class="style19">
                </td>
                <td class="style22">
                    <asp:Button ID="Button1" runat="server" Text="Feedback" />
                </td>
                <td class="style25">
                    <asp:LinkButton ID="LinkButton1" runat="server">View Feedback</asp:LinkButton>
                </td>
                <td class="style20">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style23">
                    <asp:GridView ID="gdvfeedback" runat="server" BorderStyle="Double">
                    </asp:GridView>
                </td>
                <td class="style26">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    
</asp:Content>

