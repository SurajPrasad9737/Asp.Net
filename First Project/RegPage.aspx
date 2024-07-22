<%@ Page Title="" Language="VB" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="false" CodeFile="RegPage.aspx.vb" Inherits="RegPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 538px;
        }
        .style14
        {
            width: 100%;
        }
        .style15
        {
            width: 175px;
            height: 26px;
        }
        .style16
        {
            width: 332px;
        }
        .style17
        {
            height: 26px;
            width: 332px;
        }
        .style18
        {
            width: 185px;
        }
        .style19
        {
            width: 185px;
            height: 26px;
        }
        .style20
        {
            width: 175px;
            height: 48px;
        }
        .style21
        {
            width: 332px;
            height: 48px;
        }
        .style22
        {
            width: 185px;
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
        style="font-family: Cambria; font-size: large; font-weight: bold; text-decoration: underline; text-transform: capitalize">
        Registartion Page</p>
    <table class="style13">
        <tr>
            <td class="style14">
                Name :</td>
            <td class="style16">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Address :</td>
            <td class="style16">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                DoB :</td>
            <td class="style16">
                <asp:TextBox ID="txtBdate" runat="server"></asp:TextBox>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Gender :</td>
            <td class="style17">
                <asp:RadioButton ID="rdBtnMale" runat="server" GroupName="gender" Text="Male" />
&nbsp;<asp:RadioButton ID="rdBtnFemale" runat="server" GroupName="gender" Text="Female" />
            </td>
            <td class="style19">
            </td>
        </tr>
        <tr>
            <td class="style14">
                Hobbies :</td>
            <td class="style16">
                <asp:CheckBox ID="chbRead" runat="server" Text="Reading" />
                <asp:CheckBox ID="chbCode" runat="server" Text="Coding" />
                <asp:CheckBox ID="chbTravel" runat="server" Text="Traveling" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                Age :
            </td>
            <td class="style21">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </td>
            <td class="style22">
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtAge" ErrorMessage="Age Should be 18 &lt; 30." 
                    ForeColor="Red" MaximumValue="30" MinimumValue="18" SetFocusOnError="True" 
                    Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                UserName :</td>
            <td class="style16">
                <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Password :</td>
            <td class="style16">
                <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Confirm Password :</td>
            <td class="style16">
                <asp:TextBox ID="txtcnfpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Emails :
            </td>
            <td class="style16">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                UserType :</td>
            <td class="style16">
                <asp:DropDownList ID="dblUtype" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Mobile No :
            </td>
            <td class="style17">
                <asp:TextBox ID="txtMno" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style16">
                <asp:Button ID="Submit" runat="server" Text="Submit" Width="135px" />
&nbsp;
                <asp:Button ID="Button1" runat="server" CausesValidation="False" Text="Reset" 
                    Width="104px" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style16">
                <asp:Button ID="rglInfo" runat="server" Text="Display Information" 
                    Width="326px" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            
                <asp:GridView ID="regInfo" runat="server">
                </asp:GridView>
            
           
           
        </tr>
    </table>
  
</asp:Content>

