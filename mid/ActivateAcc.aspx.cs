using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ActivateAcc : System.Web.UI.Page
    {
        ICDBTrdAEntities i = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var query = from p in i.Sec_Users
                            select new
                            {
                                الحالة = p.Active,
                                الرقم_السري = p.UserPass,
                                اسم_المستخدم = p.UserName,
                                رقم_المستخدم = p.UserID
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var query = from p in i.Sec_Users
                            where p.UserName.Contains(TextBox1.Text)
                            select new
                            {
                                الحالة = p.Active,
                                الرقم_السري = p.UserPass,
                                اسم_المستخدم = p.UserName,
                                رقم_المستخدم = p.UserID
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
            Response.Redirect("AddActivateAcc.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text)|| string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in i.Sec_Users
                            select new
                            {
                                الحالة = p.Active,
                                الرقم_السري = p.UserPass,
                                اسم_المستخدم = p.UserName,
                                رقم_المستخدم = p.UserID
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    var query = from p in i.Sec_Users
                                where p.UserName.Contains(TextBox1.Text)
                                select new
                                {
                                    الحالة = p.Active,
                                    الرقم_السري = p.UserPass,
                                    اسم_المستخدم = p.UserName,
                                    رقم_المستخدم = p.UserID
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch
                {

                }
            }
        }

       
    }
}