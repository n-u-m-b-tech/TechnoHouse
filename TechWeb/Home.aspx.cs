﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techno_Web
{
    public partial class Home : System.Web.UI.Page
    {
        public String imageurl;
        protected void Page_Load(object sender, EventArgs e)
        {
            imageurl = "images/logo.png";
            //imageurl = Request.QueryString["imageurl"];
        }
    }
}