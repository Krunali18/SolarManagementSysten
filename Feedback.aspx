<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Solar_Management_System.Client.Feedback1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div style="height: 387px; width: 745px">
    <form id="form1">
           <div align="center" style="height: 469px"> 
      <div style="height: 44px; width: 709px; font-size: xx-large; font-weight: bold; color: #FFFFCC; background-color:#003366; text-decoration: underline blink;" align="center">
          FEEDBACK</div>
               <br />
               <br />
               <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Name&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
    <asp:TextBox ID="fname" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                              <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Email Id&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="lname" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>

                                             <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Subject&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="mail" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
</div>
                                                         <div style="width: 859px; font-weight: bold; color: #003366; height: 25px; " align="center" 
    >
    Message&nbsp;&nbsp;
    <asp:TextBox ID="txtaddress" runat="server" Width="206px" 
        Height="16px" BorderColor="#003366" BorderStyle="Solid" TextMode="MultiLine" BorderWidth="1px"></asp:TextBox>
</div>
       
       
                                                        
        <br />
               <br />
      
                 &nbsp;&nbsp;  <div style="height: 90px; width: 346px; margin-left: 0px;" align="center" >
                      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Submit" Height="30px" OnClick="btnsubmit_Click"  />
                      <asp:Button ID="btnrest" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Resete" Height="30px"  />
                      <asp:Button ID="btncancel" runat="server" BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="30px" Text="Cancel"   />
                      <br />
                      <asp:Label ID="mess" runat="server" BackColor="Red" BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" ForeColor="White" Text="password is not same" Visible="False"></asp:Label>
        </div>
        </div>
           </form>
</div>


</asp:Content>
