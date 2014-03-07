<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Default2" %>
        <%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<%-- turn off jQuery mobile Ajax to enable form postback --%>
<script type="text/javascript">
    $(document).bind("mobileinit", function () {
        $.mobile.ajaxEnabled = false;
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h2>
        Contact</h2>
    <asp:Panel ID="pnl_contactform" runat="server">
        <asp:Label ID="lbl_topic" runat="server" Text="*Topic: " AssociatedControlID="rbl_topic" />
        <asp:RadioButtonList ID="rbl_topic" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <asp:ListItem>Questions</asp:ListItem>
            <asp:ListItem>Press Inquiries</asp:ListItem>
            <asp:ListItem>Bookings</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="lbl_name" runat="server" Text="*Name: " AssociatedControlID="txt_name" />
        <asp:TextBox ID="txt_name" runat="server" />
        <%-- checking if empty --%>
        <asp:RequiredFieldValidator ID="rfv_name" runat="server" Text="Empty value" ErrorMessage="Please enter your name."
            ControlToValidate="txt_name" Display="Dynamic" SetFocusOnError="true" ValidationGroup="contact_form" CssClass="validation"/>
        <%-- checking if value entered is text format  --%>
        <asp:RegularExpressionValidator ID="rev_name" runat="server" Text="Invalid name"
            ErrorMessage="Please enter your correct name." ControlToValidate="txt_name" Display="Dynamic"
            SetFocusOnError="true" ValidationExpression="^\s*[a-zA-Z,\s]+\s*$" ValidationGroup="contact_form" CssClass="validation" />
        <asp:Label ID="lbl_email" runat="server" Text="*Email: " AssociatedControlID="txt_email" />
        <asp:TextBox ID="txt_email" runat="server" />
        <%-- checking if email format using regular expression --%>
        <asp:RegularExpressionValidator ID="rev_email" runat="server" Text="Invalid email format"
            ControlToValidate="txt_email" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"
            ErrorMessage="Please enter a correct email address." ValidationGroup="contact_form" CssClass="validation"/>
        <%-- checking if empty --%>
        <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email"
            Display="dynamic" SetFocusOnError="true" Text="Empty value" ErrorMessage="Please enter an email address."
            ValidationGroup="contact_form" CssClass="validation"/>
        <asp:Label ID="lbl_msg" runat="server" Text="*Message: " AssociatedControlID="txt_msg" />
        <asp:TextBox ID="txt_msg" runat="server" TextMode="MultiLine" MaxLength="300" Height="300px" />
        <%-- checking if empty --%>
        <asp:RequiredFieldValidator ID="rfv_message" runat="server" Text="Empty value" ErrorMessage="Please enter a message."
            ControlToValidate="txt_msg" Display="dynamic" SetFocusOnError="true" ValidationGroup="contact_form" CssClass="validation"/>
        <asp:CheckBox ID="cbx_news" runat="server" Text=" Subscribe to newsletter?" />
        <%-- Validation Summary for contact form --%>
        <asp:ValidationSummary ID="vds_contact" runat="server" HeaderText="Form Errors:"
            DisplayMode="List" ValidationGroup="contact_form" />
        <%-- Submit button --%>
        <asp:Button ID="btn_submit" runat="server" Text="Submit" ValidationGroup="contact_form"
            OnClick="subSubmit" data-ajax="false"/>
        <%-- Clear button --%>
        <asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="subClear" data-ajax="false" />
    </asp:Panel>
    <%-- Output Label --%>
    <asp:Label ID="lbl_output" runat="server" />
</asp:Content>
