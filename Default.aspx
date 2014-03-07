<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>
    <%@ MasterType VirtualPath="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <%--    <h2>
        <a href="#">THIS WEEK ON ASOT615</a></h2>
    <img src="App_Themes/Theme1/images/avb-1.jpg" />
    <p>
        With the summer season about to kick off, there's an outburst of hot new tunes!
        And guess what? Armin selected them for you, bringing them together in this week's
        episode of A State of Trance. While Ibiza is getting ready for the ASOT nights to
        land there, it's time for you to get in the mood! Armin's not the only one inspired
        by sunshine. This week's ASOT, 615, also features a special about the ‘In Search
        of Sunrise 11' album, mixed by Richard Durand and Myon & Shane 54. Armin introduces
        you to some of its jewels, on the exclusive special! But there's more. Much more!
        ASOT 615 brings you the brand new tunes of Shogun, BT, Faruk Sabanci, The Thrillseekers,
        Simon Patterson, Aiden Arie, Bjorn Akesson and many more! Take a deep breath and
        be prepared for a 2 hour ride.</p>
    <hr />
    <h2>
        <a href="#">ESSENTIAL MIX TRACKLIST 25-05-2013</a></h2>
    <img src="App_Themes/Theme1/images/avb-2.jpg" />
    <p>
        Essential Mix Tracklist 25-05-2013 "The Intense Mix" Rodg - Jacqueline (Intro Mix)
        [Body Condition] Hazem Beltagui feat. Nourey - Light In A Darkened World [Fractal
        Digital Recordings] eleven.five - Echo [Silk] 16 Bit Lolitas - Chant A Tune (Jeremy
        Olander Remix) [Armada] Unknown Artist - Voodoo People [Coldharbour] EXCLUSIVE FIRST
        PLAY Orbital - Halcyon (Dezza Bootleg Remix 2012) JimiJ - Mea Culpa (Original Mix)
        [Electronic Elements] Presslaboys - Incomplete (Deepfunk remix) [Destroy the Ego]
        BT - Vervoeren [Armada] Alexander Popov - Moscow Subway (Original mix)[Armada] EXCLUSIVE
        FIRST PLAY ID - ID 06-04 [Coldharbour Recordings] EXCLUSIVE FIRST PLAY Aurosonic
        & Martire feat. Aelyn - Paradise (Original Mix) [Armada] Armin van Buuren feat.
        Cindy Alma - Beautiful</p>
    <hr />
    <div class="ui-grid-a">
        <div class="ui-block-a">
            <div class="ui-bar ui-bar-e">
                <h3>
                    Featured</h3>
                <hr />
                <img src="App_Themes/Theme1/images/avb-5-thumb.jpg" />
                <p>
                    Playlist for A State of Sundays 136 of the A State of Trance radio show of June
                    1, 2013</p>
                <a href="#">Download Podcast 272</a>
                <hr />
                <img src="App_Themes/Theme1/images/avb-3-thumb.jpg" />
                <p>
                    After months and months of waiting, anticipating and teasing, it's finally here.
                    Today, the brand...</p>
                <a href="#">Armin Van Buuren - Intense</a>
            </div>
        </div>
        <div class="ui-block-b">
            <div class="ui-bar ui-bar-e">
                <h3>
                    Schedule</h3>
                <hr />
                <p>Seoul, Korea</p>
                <ul>
                    <li>June 14 - Olympic Stadium</li>
                </ul>
                <hr />
                                <p>Tapei, Taiwan</p>
                <ul>
                    <li>June 15 - New Taipei City Exhibition Hall</li>
                </ul>
                <hr />
                                <p>Las Vegas, United States</p>
                <ul>
                    <li>June 21 - Electric Daisy Carnival</li>
                </ul>
                <hr />
                                                <p>Brtislava, Slovakia</p>
                <ul>
                    <li>June 29 - Zlate Piesky</li>
                </ul>
                <hr />

            </div>
        </div>
    </div>--%>


    <%-- Home Page Content --%>
    <asp:Repeater ID="rpt_text" runat="server">
        <ItemTemplate>
            <asp:Label ID="lbl_text" runat="server" Text='<%# Eval("text_content") %>'></asp:Label>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
