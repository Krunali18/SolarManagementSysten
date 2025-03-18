<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Solar_Management_System.ProductView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 136px;
        }
        .style4
        {
            width: 78px;
        }
        .style5
        {
            width: 90px;
        }
        .style6
        {
            width: 108px;
        }
    </style>

</head>
<body
    <div style="height: 488px">
  <form id="form1"><div align="center"><div align="left" 
            style="width: 709px">
<div align="right">
            <asp:LinkButton ID="lnklogout" runat="server" Font-Bold="True" 
                ForeColor="#003366">logout</asp:LinkButton>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="find" runat="server" Text="Find" 
            BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
            ForeColor="White" /></div>
    <div style="height:400px; overflow:scroll; width: 823px;" align="left">
      <table class="style1">
            <tr>
                <td class="style4" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    Id.no</td>
                <td class="style5" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                   Product Name</td>
               
                <td class="style6" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    Product price</td>
                <td class="style6" 
    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
    Product quantity</td>
                <td style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    ACTION</td>
            </tr>
        </table>
&nbsp;
    <asp:Table ID="tbl" runat="server" Width="811px" BackColor="White" 
             BorderWidth="0px" Font-Italic="True" 
            ForeColor="Black" Font-Bold="True">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table>
    </div>
    <div>
        <asp:Button ID="btnback" runat="server" BackColor="White" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" 
             Text="Back" OnClick="btnback_Click" />
    </div>
    </div>
    </form>
        </div>
</body>
</html>
