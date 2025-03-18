<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCount.aspx.cs" Inherits="Solar_Management_System.Admin.ViewCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <div style="height: 488px">
  <form id="form1"><div align="center"><div align="left" 
            style="width: 709px">
<div align="right">
           
    <div style="height:400px; overflow:scroll; width: 823px;" align="left">
      <table class="style1">
            <tr>
                <td class="style4" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    Id.no</td>
                <td class="style5" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                   View users count</td>
               
                <td class="style6" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                   view visitors count</td>
                <td class="style6" 
    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
    Product quantity</td>
               
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
             Text="Back" />
    </div>
    </div>
    </form>
        </div>
</body>
</html>
