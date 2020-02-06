using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class suplier_generate : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //// hide  selection area
                Label1.Visible = false;
                DropDownList1.Visible = false;
                TextBox1.Visible = false;

                //// hide selection area for Customer ID to another customer ID
                Label2.Visible = false;
                Label3.Visible = false;
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;

                ////selected default values
                RadioButtonList1.Items[0].Selected = true;
                RadioButtonList1_SelectedIndexChanged(this, e);
                RadioButtonList2.Items[0].Selected = true;
                RadioButtonList3.Items[0].Selected = true;


            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            DropDownList1.Visible = true;
            TextBox1.Visible = true;
            if (RadioButtonList1.Items[0].Selected)
            {
                Label1.Text = "الفرع";
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_NmAr";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if (RadioButtonList1.Items[1].Selected)
            {
                Label1.Text = "مندوب المبيعات";
                DropDownList1.DataValueField = "Supctg_No";
                DropDownList1.DataTextField = "Supctg_Nmar";
                DropDownList1.DataSource = db.Astsupctg.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
          

            //else if (RadioButtonList1.Items[6].Selected)
            //{
            //    Label1.Text = "التصنيف";
            //    DropDownList1.DataValueField = "Slm_No";
            //    DropDownList1.DataTextField = "Slm_NmAr";
            //    DropDownList1.DataSource = db.InvAstSalesman.ToList();
            //}
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.SelectedValue;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string report = "";
            var query = "";


            Session.Remove("reportname");
            Session.Remove("dbquery");


            if (RadioButtonList2.Items[0].Selected)
            {
                report = "suplierRep_credit_value.rpt";
                query = @"SELECT DISTINCT 
                         dbo.MtsSuplir.Sup_No, dbo.MtsSuplir.Brn_No, dbo.MtsSuplir.Sup_Refno, dbo.MtsSuplir.SupCtg_No, dbo.MtsSuplir.Cntry_No, dbo.MtsSuplir.Sup_Nm, dbo.MtsSuplir.Sup_NmAr, dbo.MtsSuplir.Sup_Adr, dbo.MtsSuplir.Sup_Rsp, 
                         dbo.MtsSuplir.Sup_Othr, dbo.MtsSuplir.Curncy_No, dbo.MtsSuplir.Sup_Email, dbo.MtsSuplir.Sup_Tel1, dbo.MtsSuplir.Mobile, dbo.MtsSuplir.Sup_Tel2, dbo.MtsSuplir.Sup_Fax, dbo.MtsSuplir.Acc_No, dbo.MtsSuplir.Credit_Value, 
                         dbo.MtsSuplir.Credit_Days, dbo.MtsSuplir.Fbal_Db, dbo.MtsSuplir.Fbal_CR, dbo.MtsSuplir.Tax_No, dbo.MtsSuplir.sup_active, dbo.Astsupctg.Supctg_No AS Expr1, dbo.Astsupctg.Supctg_Nmar, dbo.Astsupctg.Supctg_Nmen, 
                         dbo.Astsupctg.Sup_Cstm
                        FROM dbo.MtsSuplir INNER JOIN
                         dbo.Astsupctg ON dbo.MtsSuplir.SupCtg_No = dbo.Astsupctg.Supctg_No";

             
               //query = @"SELECT Distinct(MtsCustmr.Cstm_No),MtsCustmr.Fbal_CR, MtsCustmr.Fbal_Db, MtsCustmr.Credit_Days, MtsCustmr.Credit_Value, InvAstSalesman.Slm_NmAr, InvAstCity.City_NmAR, InvAstNutrbusn.Nutr_NmAr, MtsCustmr.Cstm_Nmarb FROM (((MtsCustmr MtsCustmr left JOIN InvAstSalesman InvAstSalesman ON MtsCustmr.Slm_No = InvAstSalesman.Slm_No) left JOIN InvAstCity InvAstCity ON MtsCustmr.City_No = InvAstCity.City_No) left JOIN InvAstNutrbusn InvAstNutrbusn ON MtsCustmr.Nutr_No = InvAstNutrbusn.Nutr_No)";
            }
            else if (RadioButtonList2.Items[1].Selected)
            {
                report = "suplirRep_supli_menur.rpt";
                query = @"SELECT MtsSuplir.Sup_No, MtsSuplir.Sup_NmAr, MtsSuplir.Sup_Rsp, MtsSuplir.Sup_Email, MtsSuplir.Sup_Tel1, MtsSuplir.Sup_Tel2, MtsSuplir.Sup_Fax, MtsSuplir.Mobile, MtsSuplir.Sup_Adr FROM   MtsSuplir MtsSuplir";
            }
          
            ////-----------------------------------------------------\\\\\\\\\\
            if (RadioButtonList1.Items[0].Selected)
            {
                query += " where MtsSuplir.Brn_No=" + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[1].Selected)
            {
                query += " where MtsSuplir.SupCtg_No = " + TextBox1.Text;
            }
           
            ///---------------------------------------------------------\\\\\\\

            if (RadioButtonList3.Items[0].Selected)
            {
                query += " And [sup_active] = 1";
            }
            else if (RadioButtonList3.Items[1].Selected)
            {
                query += " And [sup_active] = 0";
            }
            else if (RadioButtonList3.Items[2].Selected)
            {

            }

            ///--------------------------------------------------------\\\\\\\
       

            //if (RadioButtonList2.Items[2].Selected || RadioButtonList2.Items[3].Selected)
            //{
                

            //    query += " And Sup_No >=" + DropDownList2.SelectedValue;
            //    query += " And Sup_No <=" + DropDownList3.SelectedValue;
            //}


            Session["dbquery"] = query;
            Session["reportname"] = report;


            Response.Redirect("suplier_report_viewer.aspx");
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
        //    if (RadioButtonList2.Items[2].Selected || RadioButtonList2.Items[3].Selected)
        //    {
        //        Label2.Visible = true;
        //        Label3.Visible = true;
        //        DropDownList2.Visible = true;
        //        DropDownList3.Visible = true;
        //        TextBox2.Visible = true;
        //        TextBox3.Visible = true;

        //        Label2.Text = "من عميل رقم";
        //        Label3.Text = "إلي عميل رقم";

        //        DropDownList2.DataTextField = "Sup_NmAr";
        //        DropDownList2.DataValueField = "Sup_No";
        //        DropDownList2.DataSource = db.MtsSuplir.ToList();
        //        DropDownList2.DataBind();

        //        DropDownList3.DataTextField = "Sup_NmAr";
        //        DropDownList3.DataValueField = "Sup_No";
        //        DropDownList3.DataSource = db.MtsSuplir.ToList();
        //        DropDownList3.DataBind();

        //    }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = DropDownList2.SelectedValue;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text = DropDownList3.SelectedValue;
        }
    }
}