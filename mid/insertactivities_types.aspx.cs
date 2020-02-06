﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertactivities_types : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (db.ActivityTypes.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.ActivityTypes.Max(o => o.Actvty_No) + 1).ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ActivityTypes cn = new ActivityTypes();
            cn.Actvty_No = Convert.ToInt16(TextBox1.Text);
            cn.Name_Arb = TextBox2.Text;
            cn.Name_Eng = TextBox3.Text;
            db.ActivityTypes.Add(cn);
            db.SaveChanges();
            Response.Redirect("activity_types.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("activity_types.aspx");
        }
    }
}