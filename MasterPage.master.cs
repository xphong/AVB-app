﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Public Control for title
    private string _title;
    public string pp_masterTitle
    {
        get { return _title; }
        set { _title = value; }
    }
}
