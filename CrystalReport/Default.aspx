<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrystalReport._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <h3>&nbsp;Type pr Id
     </h3>
    <asp:TextBox Text="" runat="server" ID="Txt_se_pr"></asp:TextBox>
    <asp:Button ID="Btn_Searchpr" runat="server" Text="Search" OnClick="Btn_Searchpr_Click" />
    <hr />
    <asp:GridView ID="Grdpr" runat="server">
    </asp:GridView>
    <asp:Button ID="BtnPrint" runat="server" Text="print" OnClick="BtnPrint_Click" />
    <br />
    

</asp:Content>
