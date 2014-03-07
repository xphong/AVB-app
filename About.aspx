<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="Default2" %>
    <%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
<%--    <h2>About</h2>
    <img src="App_Themes/Theme1/images/avb.jpg" />
    <p>
A man driven by an unbridled and relentless passion for music. A born perfectionist, striving to stay on top of the scene he’s helped to grow. The flag-bearer of the trance movement, one of the biggest scenes in EDM worldwide. A down-to-earth guy, living the extraordinary life of one of the world’s most popular DJ’s. Armin van Buuren is always on the move, whether through the music he creates in his studio, or bound to the next high-end club or festival somewhere around the globe.
Armin:”It’s not just love for music, it’s my passion. It goes beyond liking, and beyond a hobby, it’s about a way of living. Music is essential to my life.”</p>
<p>For more than 15 years, the Dutchman has been living to the rhythm of his own, international success. A 5 times number one position in the critically acclaimed  DJ Mag’s Top 100 poll is the result of his loyalty to fans, his creativity in the studio, the perseverance with which he hosts his weekly radio show A State of Trance and the energy he transcends to the crowds in front of him. Despite the heavy pressure that comes along with being the world’s most popular DJ, Armin has always kept his focus on the music. And that’s exactly what keeps him going.</p>--%>
    
    <%-- About Page Content --%>
    <asp:Repeater ID="rpt_text" runat="server">
        <ItemTemplate>
            <asp:Label ID="lbl_text" runat="server" Text='<%# Eval("text_content") %>'></asp:Label>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
