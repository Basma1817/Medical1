using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_emp_cntrct : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();
            TextBox3.Text = DropDownList1.SelectedValue;
            int no = int.Parse(DropDownList1.SelectedValue);


            DropDownList2.DataValueField = "Actvty_No";
            DropDownList2.DataTextField = "Name_Arb";
            DropDownList2.DataSource = db.ActivityTypes.ToList();
            DropDownList2.DataBind();
            TextBox2.Text = DropDownList2.SelectedValue;
            ViewState["id"] = 0;
       
        var query = from p in db.MtsEmpcntrct

                        select new
                        {
                            
                            بدل_غداء = p.Food_Alw,
                            بداية_التعاقد = p.Cnt_Stdt,
                            en_اسم_الموظف = p.Emp_NmEn,
                            اسم_الموظف = p.Emp_NmAr,
                            الرقم = p.Emp_No
                            
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.MtsEmpcntrct
                            where p.Emp_No == id
                            select new
                            {
                                بدل_غداء = p.Food_Alw,
                                بداية_التعاقد = p.Cnt_Stdt,
                                en_اسم_الموظف = p.Emp_NmEn,
                                اسم_الموظف = p.Emp_NmAr,
                                الرقم = p.Emp_No

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch { }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                var query = from p in db.MtsEmpcntrct

                            select new
                            {
                                بدل_غداء = p.Food_Alw,
                                بداية_التعاقد = p.Cnt_Stdt,
                                en_اسم_الموظف = p.Emp_NmEn,
                                اسم_الموظف = p.Emp_NmAr,
                                الرقم = p.Emp_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.MtsEmpcntrct
                                where p.Emp_No == id
                                select new
                                {
                                    بدل_غداء = p.Food_Alw,
                                    بداية_التعاقد = p.Cnt_Stdt,
                                    en_اسم_الموظف = p.Emp_NmEn,
                                    اسم_الموظف = p.Emp_NmAr,
                                    الرقم = p.Emp_No

                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch { }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert_mts_emp_cntrct.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_emp_cntrctReport.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            int index = e.NewSelectedIndex;
            int id = Convert.ToInt16(GridView1.Rows[index].Cells[7].Text);
            var cn = db.MtsEmpcntrct.Find(id);
            db.MtsEmpcntrct.Remove(cn);
            db.SaveChanges();
            Response.Redirect("mts_emp_cntrct.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text = DropDownList1.SelectedValue;
            int no = int.Parse(DropDownList1.SelectedValue);
            DropDownList2.DataValueField = "Actvty_No";
            DropDownList2.DataTextField = "Name_Arb";
            DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList2.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = DropDownList2.SelectedValue;
        }

    }
}