﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class navigato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hotel.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("resort.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("city.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("city.aspx");
    }
}