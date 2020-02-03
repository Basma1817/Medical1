using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_mts_emp_cntrct : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!Page.IsPostBack)
            {
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
                DropDownList1.SelectedValue = cn.salry_typ.ToString();
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            

                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsEmpcntrct.Find(id);
                if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrWhiteSpace(TextBox1.Text))
                    cn.Emp_No = Convert.ToInt16(TextBox1.Text);
               // if (!string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrWhiteSpace(TextBox2.Text))
                    cn.Emp_NmAr = TextBox2.Text;
               // if (!string.IsNullOrEmpty(TextBox3.Text) || !string.IsNullOrWhiteSpace(TextBox3.Text))
                    cn.Emp_NmEn = TextBox3.Text;
                if (!string.IsNullOrEmpty(TextBox4.Text) || !string.IsNullOrWhiteSpace(TextBox4.Text))
                    cn.Cnt_Stdt = TextBox4.Text;
                if (!string.IsNullOrEmpty(TextBox5.Text) || !string.IsNullOrWhiteSpace(TextBox5.Text))
                    cn.Cnt_Endt = TextBox5.Text;
                if (!string.IsNullOrEmpty(TextBox6.Text) || !string.IsNullOrWhiteSpace(TextBox6.Text))
                    cn.Cnt_Nwdt = TextBox6.Text;
                cn.salry_typ = Convert.ToInt16(DropDownList1.SelectedValue);
                cn.Depm_No = Convert.ToInt16(DropDownList3.SelectedValue);

                if (!string.IsNullOrEmpty(TextBox7.Text) || !string.IsNullOrWhiteSpace(TextBox7.Text))
                    cn.Bsc_Salary =Convert.ToDecimal (TextBox7.Text);
                cn.Pymnt_No = Convert.ToInt16(DropDownList4.SelectedValue);
                if (!string.IsNullOrEmpty(TextBox8.Text) || !string.IsNullOrWhiteSpace(TextBox8.Text))
                    cn.Trnsp_Alw =Convert.ToDecimal (TextBox8.Text);
                if (!string.IsNullOrEmpty(TextBox9.Text) || !string.IsNullOrWhiteSpace(TextBox9.Text))
                    cn.Wrk_Hour =Convert.ToDecimal (TextBox9.Text);

                //cn.Bnk_No = Convert.ToInt16(TextBox10.Text);
                if (!string.IsNullOrEmpty(TextBox11.Text) || !string.IsNullOrWhiteSpace(TextBox11.Text))
                    cn.Hous_Alw =Convert.ToDecimal(TextBox11.Text);
                if (!string.IsNullOrEmpty(TextBox12.Text) || !string.IsNullOrWhiteSpace(TextBox12.Text))
                    cn.Wrk_CostHour =Convert.ToDecimal(TextBox12.Text);
                if (!string.IsNullOrEmpty(TextBox13.Text) || !string.IsNullOrWhiteSpace(TextBox13.Text))
                    cn.Food_Alw = Convert.ToInt16(TextBox13.Text);
                if (!string.IsNullOrEmpty(TextBox14.Text) || !string.IsNullOrWhiteSpace(TextBox14.Text))
                    cn.Emp_Acntno = TextBox14.Text;
                if (!string.IsNullOrEmpty(TextBox15.Text) || !string.IsNullOrWhiteSpace(TextBox15.Text))
                    cn.Other_Alw =Convert.ToDecimal (TextBox15.Text);
                if (!string.IsNullOrEmpty(TextBox16.Text) || !string.IsNullOrWhiteSpace(TextBox16.Text))
                    cn.Tkt_Class = TextBox16.Text;
                if (!string.IsNullOrEmpty(TextBox17.Text) || !string.IsNullOrWhiteSpace(TextBox17.Text))
                    cn.Bnk_Brn = TextBox17.Text;
                if (!string.IsNullOrEmpty(TextBox22.Text) || !string.IsNullOrWhiteSpace(TextBox22.Text))
                    cn.Shift_Type =Convert.ToInt16(TextBox22.Text);
                if (!string.IsNullOrEmpty(TextBox18.Text) || !string.IsNullOrWhiteSpace(TextBox18.Text))
                    cn.Tkt_No =Convert.ToInt16 (TextBox18.Text);
                if (!string.IsNullOrEmpty(TextBox19.Text) || !string.IsNullOrWhiteSpace(TextBox19.Text))
                    cn.Fbal_Db =Convert.ToDecimal (TextBox19.Text);
                if (!string.IsNullOrEmpty(TextBox20.Text) || !string.IsNullOrWhiteSpace(TextBox20.Text))
                    cn.Fbal_CR =Convert.ToDecimal (TextBox20.Text);
                cn.Acc_NoDb1 = Convert.ToInt32(TextBox21.Text);
                //db.MtsEmpcntrct.Add(cn)
                db.SaveChanges();
                Response.Redirect("mts_emp_cntrct.aspx");
            }
            catch
            {
                Label1.Text = "من فضلك ادخل الداتا فى كل الحقول";
            }



        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            var id = int.Parse(Request.QueryString["no"]);
            var cn = db.MtsEmpcntrct.Find(id);
            db.MtsEmpcntrct.Remove(cn);
            db.SaveChanges();
            Response.Redirect("mts_emp_cntrct.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_emp_cntrct.aspx");

        }
    }
}