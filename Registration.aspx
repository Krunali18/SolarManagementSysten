<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Solar_Management_System.Account.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 387px; width: 745px">
    <form id="form1">
           <div align="center" style="height: 469px"> 
      <div style="height: 44px; width: 709px; font-size: xx-large; font-weight: bold; color: #FFFFCC; background-color:#003366; text-decoration: underline blink;" align="center">
          SIGNUP</div>
               <br />
               <br />
               <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    FirstName&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="fname" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                              <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    LastName&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="lname" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>

                                             <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="mail" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                                                         <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtaddress" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
       
       
                                                         <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Mobile Number&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="mob" runat="server" Width="160px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
      
                     <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" >
    Gender&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="gen" runat="server" OnSelectedIndexChanged="gen_SelectedIndexChanged">
          
          </asp:DropDownList>
          <asp:TextBox ID="gen1" runat="server" ReadOnly="True" Width="98px"></asp:TextBox>
</div>
                     <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" >
    User Name&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="uid" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                                    <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" >
    Password&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="pass" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                                           <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" >
    Confirm Password&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="cpass" runat="server" Width="155px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
        
      
                  <div style="height: 90px; width: 346px; margin-left: 0px;" align="center" >
                      &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Submit" Height="30px" OnClick="btnsubmit_Click" />
                      <asp:Button ID="btnrest" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Resete" Height="30px"  />
                      <asp:Button ID="btncancel" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="30px" Text="Cancel" OnClick="btncancel_Click"  />
                      <br />
                      <asp:Label ID="mess" runat="server" BackColor="Red" BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" ForeColor="White" Text="password is not same" Visible="False"></asp:Label>
        </div>
        </div>
           </form>
</div>
    </asp:Content>
