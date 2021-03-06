﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    content objLinq = new content();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            subBind();
        }
    }

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        // Set page title
        Master.pp_masterTitle = "Armin Van Buuren - Discography";
    }

    // Loads page content
    private void subBind()
    {
        rpt_text.DataSource = objLinq.getContentByPage("Discography");
        rpt_text.DataBind();
    }

}