using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_suplier_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!Page.IsPostBack)
            {
                //DropDownList1.DataValueField = "Sup_No";
                //DropDownList1.DataTextField = "Sup_NmAr";
                //DropDownList1.DataSource = db.MtsSuplir.ToList();
                //DropDownList1.DataBind();



                DropDownList2.DataValueField = "Supctg_No";
                DropDownList2.DataTextField = "Supctg_Nmar";
                DropDownList2.DataSource = db.Astsupctg.ToList();
                DropDownList2.DataBind();

                DropDownList3.DataValueField = "Cntry_No";
                DropDownList3.DataTextField = "Cntry_NmAr";
                DropDownList3.DataSource = db.InvAstCntry.ToList();
                DropDownList3.DataBind();



                DropDownList4.DataValueField = "Curncy_No";
                DropDownList4.DataTextField = "Curncy_Nmar";
                DropDownList4.DataSource = db.InvAstCurncy.ToList();
                DropDownList4.DataBind();

                var id = int.Parse(Request.QueryString["no"]);
                var cn = (from p in db.MtsSuplir
                          where p.Sup_No == id
                          select p).SingleOrDefault();
                TextBox14.Text = cn.Sup_No.ToString();
                //DropDownList1.SelectedValue = cn.Sup_No.ToString();
                TextBox1.Text = cn.Sup_NmAr;
                TextBox2.Text = cn.Sup_Adr;
                //TextBox3.Text = cn.Sup_Rsp;
                //TextBox4.Text = cn.Sup_Othr;
                TextBox5.Text = cn.Sup_Email;
                //TextBox6.Text = cn.Sup_Tel1;
                //TextBox7.Text = cn.Sup_Tel2;
                //TextBox8.Text = cn.Mobile;
                TextBox9.Text = cn.Credit_Value.ToString();
                TextBox10.Text = cn.Credit_Days.ToString();
                TextBox11.Text = cn.Fbal_Db.ToString();
                TextBox12.Text = cn.Fbal_CR.ToString();
                TextBox13.Text = cn.Acc_No.ToString();
                DropDownList2.SelectedValue = cn.SupCtg_No.ToString();
                DropDownList3.SelectedValue = cn.Cntry_No.ToString();
                DropDownList4.SelectedValue = cn.Curncy_No.ToString();

            }
            }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtssuplir.aspx");

        }
    }
}