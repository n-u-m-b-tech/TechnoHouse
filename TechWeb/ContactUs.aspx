<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TechWeb.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            padding:12px;
            border:1px solid #ccc;
            border-radius:4px;
            box-sizing:border-box;
            margin-top:4px;
            margin-bottom:6px;
            margin-bottom:16px;
            resize:vertical;
        }
        .auto-style2 {
            width: 385px;
            height: 85px;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            width: 243px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Fisrt Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtfName" class="auto-style4" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtlName" class="auto-style4" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Country</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtCountry" class="auto-style3" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <input id="txtSubject" class="auto-style2" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnSubmit" runat="server" Height="31px" Text="Submit" Width="121px" />
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
