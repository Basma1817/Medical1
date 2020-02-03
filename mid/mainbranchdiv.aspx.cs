using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mainbranchdiv : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();

            var query = from p in db.MainBranchDlv
                        /*where p.Jr_Ty == id*/
                        select new
                        {
                         
                          
                          الإسم_بالإنجليزي = p.Dlv_NmEn,
                          الإسم_بالعربي = p.Dlv_NmAr,
                            الرقم = p.Dlv_Stor
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.MainBranchDlv
                            where p.Dlv_Stor == id
                            select new
                            {
                                الإسم_بالإنجليزي = p.Dlv_NmEn,
                                الإسم_بالعربي = p.Dlv_NmAr,
                                الرقم = p.Dlv_Stor
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
            Response.Redirect("main_branch_div.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in db.MainBranchDlv
                                /*where p.Jr_Ty == id*/
                            select new
                            {
                                الإسم_بالإنجليزي = p.Dlv_NmEn,
                                الإسم_بالعربي = p.Dlv_NmAr,
                                الرقم = p.Dlv_Stor
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.MainBranchDlv
                                where p.Dlv_Stor == id
                                select new
                                {
                                    الإسم_بالإنجليزي = p.Dlv_NmEn,
                                    الإسم_بالعربي = p.Dlv_NmAr,
                                    الرقم = p.Dlv_Stor
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch
                {
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainbranchdivReport.aspx");
        }
    }
}