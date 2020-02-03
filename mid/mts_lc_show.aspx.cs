using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_lc_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!Page.IsPostBack)
            {
                DropDownList3.DataValueField = "Brn_No";
                DropDownList3.DataTextField = "Brn_NmAr";
                DropDownList3.DataSource = db.MainBranch.ToList();
                DropDownList3.DataBind();

                DropDownList4.DataValueField = "ACC_No";
                DropDownList4.DataTextField = "Acc_NmAr";
                DropDownList4.DataSource = db.GLAstbank.ToList();
                DropDownList4.DataBind();

                DropDownList5.DataValueField = "Sup_No";
                DropDownList5.DataTextField = "Sup_NmAr";
                DropDownList5.DataSource = db.MtsSuplir.ToList();
                DropDownList5.DataBind();

                DropDownList6.DataValueField = "Cntry_No";
                DropDownList6.DataTextField = "Cntry_NmAr";
                DropDownList6.DataSource = db.InvAstCntry.ToList();
                DropDownList6.DataBind();


                DropDownList7.DataValueField = "Pym_No";
                DropDownList7.DataTextField = "Pym_Nmar";
                DropDownList7.DataSource = db.LcPymwys.ToList();
                DropDownList7.DataBind();



                DropDownList1.DataValueField = "Curncy_No";
                DropDownList1.DataTextField = "Curncy_Nmar";
                DropDownList1.DataSource = db.InvAstCurncy.ToList();
                DropDownList1.DataBind();


                DropDownList2.DataValueField = "Curncy_No";
                DropDownList2.DataTextField = "Curncy_Nmar";
                DropDownList2.DataSource = db.InvAstCurncy.ToList();
                DropDownList2.DataBind();




                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsLC.Find(id);
                TextBox1.Text = cn.Doc_No.ToString();
                DropDownList3.SelectedValue = cn.Bank_No.ToString();
                TextBox3.Text = cn.Doc_Dt.ToString();
                //TextBox4.Text = cn.Doc_DtAr.ToString();
                DropDownList7.SelectedValue = cn.Pym_No.ToString();
                DropDownList4.SelectedValue = cn.Doc_No.ToString();
                TextBox7.Text = cn.StoreID.ToString();
                TextBox8.Text = cn.Pym_Terms;
                DropDownList5.SelectedValue = cn.Sup_No.ToString();
                DropDownList6.SelectedValue = cn.Cntry_No.ToString();
                TextBox12.Text = cn.Acc_Db.ToString();
                DropDownList1.SelectedValue = cn.Curncy_No1.ToString();
                DropDownList2.SelectedValue = cn.Curncy_No2.ToString();
                TextBox13.Text = cn.LC_FVAL.ToString();
                TextBox14.Text = cn.ExchangeRate1.ToString();
                TextBox15.Text = cn.LC_VAL.ToString();
                TextBox16.Text = cn.ReqQut_No;
                TextBox17.Text = cn.SupQut_No;
                TextBox18.Text = cn.LCExp_FVAL.ToString();
                TextBox19.Text = cn.ExchangeRate2.ToString();
                TextBox20.Text = cn.LCExp_VAL.ToString();
                TextBox21.Text = cn.ShiVia;
                TextBox22.Text = cn.Requesdt_By;
                TextBox23.Text = cn.Dlv_PLC;
                TextBox24.Text = cn.NoofItems.ToString();
                TextBox25.Text = cn.Used_By;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_lc.aspx");

        }
    }
}