<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CrystalReport.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>&nbsp;Type MR_ID
     </h3>
     <asp:TextBox Text="" runat="server" ID="Txt_se_mr"></asp:TextBox>
     <asp:Button ID="Btn_Searchmr" runat="server" Text="Search" OnClick="Btn_Searchmr_Click" />
      <hr />
    <asp:GridView ID="Grdmr" runat="server">
    </asp:GridView>
    <asp:Button ID="BtnPrintmr" runat="server" Text="print" OnClick="BtnPrintmr_Click" />
    <br />
</asp:Content>
