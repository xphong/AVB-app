<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Discography.aspx.cs" Inherits="Default2" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
<%--    <h2>
        Discography</h2>
    <hr />
    <p>
        Armin: “This is just what I really want. It’s not just love for music, it’s my passion.
        It goes beyond liking, and beyond a hobby, it’s about a way of living. Music is
        essential to my life.” The main ingredient to Armin’s life will always be music.</p>
    <a href="#popup3" data-rel="popup" data-position-to="window" data-transition="fade">
        <img class="popphoto" src="App_Themes/Theme1/images/avb-3.jpg" style="width: 30%"></a>
    <a href="#popup4" data-rel="popup" data-position-to="window" data-transition="fade">
        <img class="popphoto" src="App_Themes/Theme1/images/avb-4.jpg" style="width: 30%"></a>
    <a href="#popup5" data-rel="popup" data-position-to="window" data-transition="fade">
        <img class="popphoto" src="App_Themes/Theme1/images/avb-5.jpg" style="width: 30%"></a>
    <div data-role="popup" id="popup3" data-overlay-theme="a" data-theme="d" data-corners="false">
        <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete"
            data-iconpos="notext" class="ui-btn-right">Close</a><img class="popphoto" src="App_Themes/Theme1/images/avb-3.jpg"
                style="max-height: 512px;">
    </div>
    <div data-role="popup" id="popup4" data-overlay-theme="a" data-theme="d" data-corners="false">
        <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete"
            data-iconpos="notext" class="ui-btn-right">Close</a><img class="popphoto" src="App_Themes/Theme1/images/avb-4.jpg"
                style="max-height: 512px;">
    </div>
    <div data-role="popup" id="popup5" data-overlay-theme="a" data-theme="d" data-corners="false">
        <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete"
            data-iconpos="notext" class="ui-btn-right">Close</a><img class="popphoto" src="App_Themes/Theme1/images/avb-5.jpg"
                style="max-height: 512px;">
    </div>--%>
    <%-- Discography Page Content --%>
    <asp:Repeater ID="rpt_text" runat="server">
        <ItemTemplate>
            <asp:Label ID="lbl_text" runat="server" Text='<%# Eval("text_content") %>'></asp:Label>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
