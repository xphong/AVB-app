using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    contactform objLinq = new contactform();

    protected void Page_Load(object sender, EventArgs e)
    {
        // Set default for radio button list
        // If the page does not post back then set it to Questions
        if (!IsPostBack)
            rbl_topic.SelectedIndex = 0;
    }


    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        // Set page title
        Master.pp_masterTitle = "Armin Van Buuren - Contact";
    }

    protected void subSubmit(object sender, EventArgs e)
    {

        var newsletter = "false";

        // Checks if subscribtion to newsletter is checked
        if (cbx_news.Checked == true)
        {
            newsletter = "true";
        }

        if (Page.IsValid)
        {
            // Database Insert 
            _strMessage(objLinq.insertContact(rbl_topic.SelectedValue.ToString(), txt_name.Text, txt_email.Text, txt_msg.Text, newsletter), newsletter);
        }



    }

    protected void subClear(object sender, EventArgs e)
    {
        rbl_topic.SelectedIndex = 0;
        txt_name.Text = "";
        txt_email.Text = "";
        txt_msg.Text = "";
    }

     // Sets output message
    private void _strMessage(bool flag, string newsletter)
    {
        // if database insert worked then output confirmation message
        if (flag)
        {
            if (newsletter == "true")
            {
                //output message
                lbl_output.Text = "Thank you, " + txt_name.Text + ". Your message has been sent and you are now subscribe to our newsletter under the email: " + txt_email.Text;
            }
            else
            {
                //output message
                lbl_output.Text = "Thank you, " + txt_name.Text + ". Your message has been sent.";
            }

        }
        // if database insert failed then output error message
        else
        {

            lbl_output.Text = "There is currently an error with the database.";
        }
    }


}