<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolarProducts.aspx.cs" Inherits="Solar_Management_System.Client.SolarProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

              <asp:ListView ID="productList" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4" ItemType="Solar_Management_System.Models.SolarProduct"
            >
                   <%--SelectMethod="GetProducts"--%>
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="SolarProductDetails.aspx?productID=<%#:Item.id%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.productimage%>"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="SolarProductDetails.aspx?productID=<%#:Item.id%>">
                                        <span>
                                            <%#:Item.productname%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}", Item.productprice)%>
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>

        </div>
             </section>
    </form>
</body>
</html>
