using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class asets_status : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList2.DataTextField = "Name_Arb";
            DropDownList2.DataValueField = "Actvty_No";
            DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList2.DataBind();
            ViewState["id"] = 0;
            var query = from p in db.FixdAstStatus
                        //where p.AsetStat_No == id
                        select new
                        {
                            إسم_الأصل_بالعربي = p.AsetStat_NmAr,
                            رقم_الأصل = p.AsetStat_No,
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.FixdAstStatus
                            where p.AsetStat_No == id
                            select new
                            {
                                إسم_الأصل_بالعربي = p.AsetStat_NmAr,
                                رقم_الأصل = p.AsetStat_No,
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
            Response.Redirect("insert_ast_status.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in db.FixdAstStatus
                                //where p.AsetStat_No == id
                            select new
                            {
                                رقم_الأصل = p.AsetStat_No,
                                إسم_الأصل_بالعربي = p.AsetStat_NmAr
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.FixdAstStatus
                                where p.AsetStat_No == id
                                select new
                                {
                                    رقم_الأصل = p.AsetStat_No,
                                    إسم_الأصل_بالعربي = p.AsetStat_NmAr
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
            Response.Redirect("asets_statusReport.aspx");
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {


            int index = e.NewSelectedIndex;
            int id = Convert.ToInt16(GridView1.Rows[index].Cells[6].Text);


            var cn = db.FixdAstStatus.Find(id);
            db.FixdAstStatus.Remove(cn);
            db.SaveChanges();
            Response.Redirect("asets_status.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList1.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}