using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class receipt_cash : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = DropDownList1.SelectedValue;
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();
            int no = int.Parse(DropDownList1.SelectedValue);
            TextBox2.Text = DropDownList2.SelectedValue;
            DropDownList2.DataTextField = "Name_Arb";
            DropDownList2.DataValueField = "Actvty_No";
            DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList2.DataBind();

            var query = from p in db.GLjrntrs
                         
                        select new
                        {
                            
                            حالة_السند = p.Tr_Ds1,
                            البيان = p.Tr_Ds,
                            تاريخ_القيد = p.Tr_Dt,
                            نوع_السند = p.Jr_Ty,
                            رقم_السند = p.Tr_No
                  
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);

                var query = from p in db.GLjrntrs
                             
                            select new
                            {
                                
                                حالة_السند = p.Tr_Ds1,
                                البيان = p.Tr_Ds,
                                تاريخ_القيد = p.Tr_Dt,
                                نوع_السند = p.Jr_Ty,
                                رقم_السند = p.Tr_No

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch { }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert_receipt_cash.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {

                var query = from p in db.GLjrntrs
                              
                            select new
                            {
                                حالة_السند = p.Tr_Ds1,
                                البيان = p.Tr_Ds,
                                تاريخ_القيد = p.Tr_Dt,
                                نوع_السند = p.Jr_Ty,
                                رقم_السند = p.Tr_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            else
            {
                try
                {
                    int id = int.Parse(TextBox1.Text);
                    var query = from p in db.GLjrntrs   
                                select new
                                {
                                    حالة_السند = p.Tr_Ds1,
                                    البيان = p.Tr_Ds,
                                    تاريخ_القيد = p.Tr_Dt,
                                    نوع_السند = p.Jr_Ty,
                                    رقم_السند = p.Tr_No
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch { }

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Redirect("#Report.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int index = e.NewSelectedIndex;
            int id = Convert.ToInt32(GridView1.Rows[index].Cells[6].Text);
            var cn = db.GLjrntrs.Find(id);
            db.GLjrntrs.Remove(cn);
            db.SaveChanges();
            Response.Redirect("receipt_cash.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int no = int.Parse(DropDownList1.SelectedValue);
        TextBox3.Text = DropDownList1.SelectedValue;
        DropDownList1.DataTextField = "Cmp_Nm";
        DropDownList1.DataValueField = "Cmp_No";
        DropDownList1.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
        DropDownList1.DataBind();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
            TextBox2.Text = DropDownList2.SelectedValue;
        }
}
}
