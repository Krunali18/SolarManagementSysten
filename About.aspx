<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Solar_Management_System.Client.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 387px; width: 745px">
        <form id="form1"  >
       <div>

<div align="center" 
        style="color: #FFFFFF; font-weight: bold; font-size: xx-large; background-color: #003366">
        About Solar
</div>
          

<div style="color: #003366"> Luminous Power Technologies is a powerful and trustworthy brand with a wide range of innovative products in the power backup, and residential solar space.

With 7 manufacturing units, more than 28 sales offices in India and presence in over 36 countries, our 6000 employees serve more than 60,000 channel partners and millions of customers. Our motto has always been Customer Delight through Innovation & Passion with the focus on Execution & Team-work. At Luminous, we passionately innovate to make life comfortable and efficient.



</div>
            <br />
 <br />
<div style="color: #FFFFFF; font-weight: bold; font-size: x-large; background-color: #003366;" 
        align="center">
        Achievements
        </div>


         <div style="color: #003366">
        <ul style="margin-left:20px; font-size:13px; ">

        <li>Received the “Frost & Sullivan Market Penetration Leadership Award in Asia Pacific for DC-AC UPS in non-renewable energy markets.</li>
            <li>Awarded to us Based on Industrial Field Survey by National Organization for Commerce & Industry.</li>
            <li>For the ‘Best Home UPS’ & ‘Best UPS Battery Categories.</li>
            <li>We have been recognized as the most preferred UPS brand for the year 2013/14 by the Juxt India online study as well as the Best Power Back-up Solution Provider Company based on the study conducted by VAR India.</li>
            <li>Luminous has been again listed as India’s most Trusted brand in the category of Power Products in ‘The Brand Trust Report, India Study, 2017’, Luminous won the accolade in 2014 and 2016 as well. </li>

        </ul>
        </div>

</div>
     <div style="width: 859px; height: 60px;" align="left" >
         <asp:Button ID="BtnBack" runat="server" BackColor="#003366" BorderStyle="Solid" 
     BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Back" OnClick="BtnBack_Click" 
   />
    </div>
            </form>
 </div>
    </asp:Content>

