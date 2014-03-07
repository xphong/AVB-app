<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Schedule.aspx.cs" Inherits="Default2" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
<%--    <h2>
        Schedule</h2>
    <hr />
    <div data-role="collapsible-set">
        <div data-role="collapsible">
            <h3>
                June 14 - Olympic Stadium</h3>
            <p>
                Olympic Stadium - Seoul, South Korea</p>
        </div>
        <div data-role="collapsible">
            <h3>
                June 15 - New Taipei City Exhibition Hall
            </h3>
            <p>
                New Taipei City Exhibition Hall - Taipei, Taiwan</p>
        </div>
        <div data-role="collapsible">
            <h3>
                June 21 -  Electric Daisy Carnival</h3>
            <p>
                Electric Daisy Carnival - Las Vegas, United States</p>
        </div>
        <div data-role="collapsible">
            <h3>
                June 29 -  Zlate Piesky</h3>
            <p>
                Zlate Piesky - Bratislava, Slovakia</p>
        </div>
        <div data-role="collapsible">
            <h3>
                July 5 - Nizanim Beach</h3>
            <p>
                Nizanim Beach - Eilat, Israel</p>
        </div>
        <div data-role="collapsible">
            <h3>
                July 6 - Cittadella Del Carnevale</h3>
            <p>
                Cittadella Del Carnevale - Viareggio, Italy</p>
        </div>
        <div data-role="collapsible">
            <h3>
                July 7 - Pista Azzurra</h3>
            <p>
                Pista Azzurra - Jesolo, Italy</p>
        </div>
    </div>--%>
    <%-- Schedule Page Content --%>
    <asp:Repeater ID="rpt_text" runat="server">
        <ItemTemplate>
            <asp:Label ID="lbl_text" runat="server" Text='<%# Eval("text_content") %>'></asp:Label>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
