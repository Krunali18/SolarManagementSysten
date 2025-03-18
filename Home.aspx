<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Solar_Management_System.Client.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 387px; width: 745px">
    <form id="form1" >
        <div align="right" 
       
        
        style="width: 733px; margin-left: 2px; height: 28px;">
                    <asp:LinkButton ID="lnkadminLogin" runat="server"  
                        Font-Bold="True" ForeColor="#003366" Height="20px" OnClick="lnkadminLogin_Click">Login</asp:LinkButton>
                   <%-- &nbsp;&nbsp;
                    <asp:LinkButton ID="lnkuserLogin" runat="server" 
                        Font-Bold="True" ForeColor="#003366" Height="20px">User Login</asp:LinkButton>--%>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="lnkuserSignup" runat="server" 
                        Font-Bold="True" ForeColor="#003366" Height="20px" OnClick="lnkuserSignup_Click">User sign up</asp:LinkButton>
            &nbsp;&nbsp;
            <asp:LinkButton ID="lnkaboutus" runat="server" 
    Font-Bold="True" ForeColor="#003366" Height="20px" OnClick="lnkaboutus_Click" >About us</asp:LinkButton>
    </div>
    <br />
                 <div style="color: #003366">
        <ul style="margin-left:20px; font-size:13px; ">

        <li>Received the “Frost & Sullivan Market Penetration Leadership Award in Asia Pacific for DC-AC UPS in non-renewable energy markets.</li>
            <li>Awarded to us Based on Industrial Field Survey by National Organization for Commerce & Industry.</li>
            <li>For the ‘Best Home UPS’ & ‘Best UPS Battery Categories.</li>
            <li>We have been recognized as the most preferred UPS brand for the year 2013/14 by the Juxt India online study as well as the Best Power Back-up Solution Provider Company based on the study conducted by VAR India.</li>
            <li>Luminous has been again listed as India’s most Trusted brand in the category of Power Products in ‘The Brand Trust Report, India Study, 2017’, Luminous won the accolade in 2014 and 2016 as well. </li>

        </ul>
        </div>


    <div style="width: 197px; float: left; height: 220px;" align="left">
          
            <%--<br />--%>
           <%-- <p style="color: white; text-align: left">
           Why Luminous?
Luminous Power Technologies is a powerful and trustworthy brand with a wide range of innovative products in the power backup, and residential solar space.
</p>--%>
        <asp:Image ID="Image1" runat="server" Height="100px" 
            ImageUrl="~/Client/img/0004c5aa-da4f-4c21-ad6d-763553258761_WebBanner1.jpg" Width="300px" />
        </div>
        <div style="float: left; height: 216px; width: 203px;" 
        align="center">
          
</div>
        
    </form>
        </div>
</asp:Content>
