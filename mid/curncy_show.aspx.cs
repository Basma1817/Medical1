﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class curncy_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.InvAstCurncy.Find(id);
                TextBox1.Text = cn.Curncy_No.ToString();
                TextBox2.Text = cn.Curncy_Nmar;
                TextBox3.Text = cn.Curncy_Nm;
                TextBox4.Text = cn.Curncy_Rate.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("curncy.aspx");
        }
    }
}