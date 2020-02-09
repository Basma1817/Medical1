using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_emp_cntract_delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!Page.IsPostBack)
            {
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();
                int no = int.Parse(DropDownList1.SelectedValue);

                DropDownList8.DataTextField = "Name_Arb";
                DropDownList8.DataValueField = "Actvty_No";
                DropDownList8.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
                DropDownList8.DataBind();
                ViewState["id"] = 0;

                TextBox1.Enabled = false;
                DropDownList3.DataValueField = "Dpm_No";
                DropDownList3.DataTextField = "Dpm_Nm";
                DropDownList3.DataSource = db.AstDprtmnt.ToList();
                DropDownList3.DataBind();



                DropDownList4.DataValueField = "Pymnt_No";
                DropDownList4.DataTextField = "Pymnt_NmAr";
                DropDownList4.DataSource = db.HrAstPymntype.ToList();
                DropDownList4.DataBind();

                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsEmpcntrct.Find(id);

                TextBox1.Text = cn.Emp_No.ToString();
                TextBox2.Text = cn.Emp_NmAr;
                TextBox3.Text = cn.Emp_NmEn;
                TextBox4.Text = cn.Cnt_Stdt;
                TextBox5.Text = cn.Cnt_Endt;
                TextBox6.Text = cn.Cnt_Nwdt;
                RadioButtonList1.SelectedValue = cn.salry_typ.ToString();
                DropDownList3.SelectedValue = cn.Depm_No.ToString();
                TextBox7.Text = cn.Bsc_Salary.ToString();
                DropDownList4.SelectedValue = cn.Pymnt_No.ToString();
                TextBox8.Text = cn.Trnsp_Alw.ToString();
                TextBox9.Text = cn.Wrk_Hour.ToString();
                TextBox10.Text = cn.Bnk_No.ToString();
                TextBox11.Text = cn.Hous_Alw.ToString();
                TextBox12.Text = cn.Wrk_CostHour.ToString();
                TextBox13.Text = cn.Food_Alw.ToString();
                TextBox14.Text = cn.Emp_Acntno;
                TextBox15.Text = cn.Other_Alw.ToString();
                TextBox16.Text = cn.Tkt_Class;
                TextBox17.Text = cn.Bnk_Brn;
                TextBox22.Text = cn.Shift_Type.ToString();
                TextBox18.Text = cn.Tkt_No.ToString();
                TextBox19.Text = cn.Fbal_Db.ToString();

                TextBox20.Text = cn.Fbal_CR.ToString();
                TextBox21.Text = cn.Acc_NoDb1.ToString();




            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_emp_cntrct.aspx");

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["no"]);
            if (id == 0)
            {

            }
            else
            {
                // delete selected row
                var cn = db.MtsEmpcntrct.Find(id);
                db.MtsEmpcntrct.Remove(cn);
                db.SaveChanges();
                Response.Redirect("mts_emp_cntrct.aspx");
                // load data to grid view
                //var query = from p in db.ActivityTypes
                //                // where p.Actvty_No == id
                //            select new
                //            {
                //                الإسم_بالإنجليزي = p.Name_Eng,
                //                الإسم_بالعربي = p.Name_Arb,
                //                الرقم = p.Actvty_No
                //            };
                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList1.DataBind();
        }

        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}