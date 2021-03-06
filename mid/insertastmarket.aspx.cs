﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertastmarket : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_Nm";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();
                TextBox1.Enabled = false;
                 if (!IsPostBack)
                {
                    if (db.InvAstMarket.Count() == 0)
                        TextBox1.Text = (1).ToString();
                    else
                        TextBox1.Text = (db.InvAstMarket.Max(o => o.Mrkt_No) + 1).ToString();
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            InvAstMarket cn = new InvAstMarket();
            cn.Mrkt_No = Convert.ToInt16(TextBox1.Text);
            cn.Mrkt_NmAr = TextBox2.Text;
            cn.Mrkt_NmEn = TextBox3.Text;
            cn.Brn_No = Convert.ToInt16(DropDownList1.SelectedValue);
            db.InvAstMarket.Add(cn);
            db.SaveChanges();
            Response.Redirect("astmarket.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("astmarket.aspx");
        }
        }
}