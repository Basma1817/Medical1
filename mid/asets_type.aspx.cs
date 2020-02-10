using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class asets_type : System.Web.UI.Page
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
            var query = from p in db.FixdAsetstype  
                        select new
                        {
                            رقم_الحساب = p.Cr_Acc,
                            الاهلاك = p.Dep_Prcnt,
                            إسم_الأصل = p.Ac_Nm1,             
                            الرقم = p.Ac_No1,
                        
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

 

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.FixdAsetstype
                            where p.Ac_No1 == id
                            select new
                            {
                                رقم_الحساب = p.Cr_Acc,
                                الاهلاك = p.Dep_Prcnt,
                                إسم_الأصل = p.Ac_Nm1,
                                الرقم = p.Ac_No1,
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch { }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insertasetstype.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in db.FixdAsetstype
                            select new
                            {
                                الرقم = p.Ac_No1,
                                إسم_الأصل = p.Ac_Nm1,
                                الاهلاك = p.Dep_Prcnt,
                                رقم_الحساب = p.Cr_Acc
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.FixdAsetstype
                                where p.Ac_No1 == id
                                select new
                                {
                                    الرقم = p.Ac_No1,
                                    إسم_الأصل = p.Ac_Nm1,
                                    الاهلاك = p.Dep_Prcnt,
                                    رقم_الحساب = p.Cr_Acc
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch { }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("asets_typeReport.aspx");
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {


            int index = e.NewSelectedIndex;
            int id = Convert.ToInt16(GridView1.Rows[index].Cells[6].Text);


            var cn = db.FixdAsetstype.Find(id);
            db.FixdAsetstype.Remove(cn);
            db.SaveChanges();
            Response.Redirect("asets_type.aspx");
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