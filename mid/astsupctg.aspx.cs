﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class astsupctg : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();

            var query = from p in db.Astsupctg
                        //where p.Supctg_No == id
                        select new
                        {
                            
                           
                            الإسم_بالإنجليزي = p.Supctg_Nmen,
                            الإسم_بالعربي = p.Supctg_Nmar,
                            الرقم = p.Supctg_No
                            
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.Astsupctg
                            where p.Supctg_No == id
                            select new
                            {
                                الإسم_بالإنجليزي = p.Supctg_Nmen,
                                الإسم_بالعربي = p.Supctg_Nmar,
                                الرقم = p.Supctg_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insertastsupctg.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in db.Astsupctg
                                //where p.Supctg_No == id
                            select new
                            {
                                الإسم_بالإنجليزي = p.Supctg_Nmen,
                                الإسم_بالعربي = p.Supctg_Nmar,
                                الرقم = p.Supctg_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.Astsupctg
                                where p.Supctg_No == id
                                select new
                                {
                                    الإسم_بالإنجليزي = p.Supctg_Nmen,
                                    الإسم_بالعربي = p.Supctg_Nmar,
                                    الرقم = p.Supctg_No
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch
                {

                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("astsupctgReport.aspx");
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {


            int index = e.NewSelectedIndex;
            int id = Convert.ToInt32(GridView1.Rows[index].Cells[5].Text);
            var cn = db.Astsupctg.Find(id);
            db.Astsupctg.Remove(cn);
            db.SaveChanges();
            Response.Redirect("astsupctg.aspx");
        }
    }
}