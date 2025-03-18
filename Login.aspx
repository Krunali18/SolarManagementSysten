<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="~/Account/Login.aspx.cs" Inherits="Solar_Management_System.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 387px; width: 745px">
        <p  style="width: 900px; font-weight: bold; color: #003366; height: 30px; "align="center">User Login</p>
        <form id="form1"  >
        <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="right" 
              >
<%--        <asp:LinkButton ID="lnkSignup" runat="server" OnClick="lnkSignup_Click" >SIGNUP</asp:LinkButton>--%>
        </div>
          <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
              >
              UserName&nbsp;&nbsp;&nbsp; 
              <asp:TextBox ID="txtuId" runat="server" Width="206px" 
                  Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
          </div>
          <div style="width: 859px; height: 25px; font-weight: bold; color: #003366;" align="center" 
              >Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtPassword" runat="server" 
                  TextMode="Password" Width="206px" 
                  Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
          </div>
          <div style="width: 859px; height: 60px;" align="center" >
              
              <asp:Button ID="brnLogin" runat="server" BackColor="#003366" BorderStyle="Solid"
                  BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" Text="Login" OnClick="brnLogin_Click" />
              <asp:Button ID="btnReset" runat="server" BackColor="#003366" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" Text="Reset" 
                 />
              
              <asp:Button ID="BtnBack" runat="server" BackColor="#003366" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Back" OnClick="BtnBack_Click" 
                />
              
              <br />
              <asp:Label ID="lblUserNamePass" runat="server" Font-Bold="True" ForeColor="Red" 
                  Text="password or UserName is wrong" Visible="False"  ></asp:Label>
              
          </div>
    
    </form>
</div>
    </asp:Content>
