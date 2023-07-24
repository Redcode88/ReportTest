<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CrystalReport.Contact" %>





<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>&nbsp;Type GRN ID</h3>
    <asp:TextBox Text="" runat="server" ID="Txt_se"></asp:TextBox>
    <asp:Button ID="Btn_Search" runat="server" OnClick="Btn_Search_Click" Text="Search" />
    <hr />
    <asp:GridView ID="Grd" runat="server">
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="print" />
    <br />
    


</asp:Content>
