using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace mid
{
    public partial class cstmrepsGenerate : System.Web.UI.Page
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
            if(RadioButtonList1.Items[0].Selected)
            {
                Label1.Text = "الفرع";
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_NmAr";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if(RadioButtonList1.Items[1].Selected)
            {
                Label1.Text = "مندوب المبيعات";
                DropDownList1.DataValueField = "Slm_No";
                DropDownList1.DataTextField = "Slm_NmAr";
                DropDownList1.DataSource = db.InvAstSalesman.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if (RadioButtonList1.Items[2].Selected)
            {
                Label1.Text = "نوع النشاط";
                DropDownList1.DataValueField = "Nutr_No";
                DropDownList1.DataTextField = "Nutr_NmAr";
                DropDownList1.DataSource = db.InvAstNutrbusn.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if (RadioButtonList1.Items[3].Selected)
            {
                Label1.Text = "المدينة";
                DropDownList1.DataValueField = "City_No";
                DropDownList1.DataTextField = "City_NmAR";
                DropDownList1.DataSource = db.InvAstCity.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if (RadioButtonList1.Items[4].Selected)
            {
                Label1.Text = "المنطقة";
                DropDownList1.DataValueField = "Area_No";
                DropDownList1.DataTextField = "Area_NmAR";
                DropDownList1.DataSource = db.InvAstArea.ToList();
                DropDownList1.DataBind();
                TextBox1.Text = DropDownList1.SelectedValue;
            }
            else if (RadioButtonList1.Items[5].Selected)
            {
                Label1.Text = "مندوب التسويق";
                DropDownList1.DataValueField = "Mrkt_No";
                DropDownList1.DataTextField = "Mrkt_NmAr";
                DropDownList1.DataSource = db.InvAstMarket.ToList();
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
            string report="";
            var query="";
            string title = "";
            Session.Remove("dbquery");
            Session.Remove("reportname");
            Session.Remove("title");
            if (RadioButtonList2.Items[0].Selected)
            {
             title = "تقرير العملاء حد الإئتمان";
             report = "cstmRepcreditlimit.rpt";
             query = @"SELECT Distinct(MtsCustmr.Cstm_No),MtsCustmr.Fbal_CR, MtsCustmr.Fbal_Db, MtsCustmr.Credit_Days, MtsCustmr.Credit_Value, InvAstSalesman.Slm_NmAr, InvAstCity.City_NmAR, InvAstNutrbusn.Nutr_NmAr, MtsCustmr.Cstm_Nmarb FROM (((MtsCustmr MtsCustmr left JOIN InvAstSalesman InvAstSalesman ON MtsCustmr.Slm_No = InvAstSalesman.Slm_No) left JOIN InvAstCity InvAstCity ON MtsCustmr.City_No = InvAstCity.City_No) left JOIN InvAstNutrbusn InvAstNutrbusn ON MtsCustmr.Nutr_No = InvAstNutrbusn.Nutr_No)";
            }
            else if (RadioButtonList2.Items[1].Selected)
            {
                title = "تقرير عناوين العملاء تفصيلي";
                report = "CstmRepAddDetails.rpt";
                query = @"SELECT MtsCustmr.Mobile1, MtsCustmr.Cstm_Fax, MtsCustmr.Tel1, MtsCustmr.Cntct_Prsn1, MtsCustmr.Cstm_Nmarb, MtsCustmr.Cstm_No, MtsCustmr.Fbal_Db, MtsCustmr.Fbal_CR FROM MtsCustmr MtsCustmr"; 
            }
            else if (RadioButtonList2.Items[2].Selected)
            {
                title = "تقرير قائمة العملاء";
                report = "cstmRepcstm_menu.rpt";
                query = @"SELECT MtsCustmr.Cstm_No, MtsCustmr.Cstm_Nmarb,MtsCustmr.Credit_Value, MtsCustmr.Credit_Days, MtsCustmr.Cstm_Tel, MtsCustmr.Cstm_Fax, MtsCustmr.Cntct_Prsn1, MtsCustmr.TitL1, MtsCustmr.Mobile, MtsCustmr.Fbal_Db, MtsCustmr.Fbal_CR, MtsCustmr.Cstm_Email FROM MtsCustmr MtsCustmr";
            }
            else if (RadioButtonList2.Items[3].Selected)
            {
                title = "تقرير قائمة العملاء تفصيلي";
                report = "cstmRepcstm_menu_details.rpt";
                query = @"SELECT Distinct(MtsCustmr.Cstm_No),MtsCustmr.Cstm_Nmarb, MtsCustmr.Cstm_Tel, MtsCustmr.Tel1, MtsCustmr.Tel2, MtsCustmr.Mobile, MtsCustmr.Cstm_Fax, MtsCustmr.Cstm_Email, MtsCustmr.Cntct_Prsn1, MtsCustmr.TitL1, MtsCustmr.Fbal_Db, MtsCustmr.Fbal_CR, MtsCustmr.Credit_Value, MtsCustmr.Credit_Days, InvAstNutrbusn.Nutr_NmAr, InvAstCity.City_NmAR, InvAstSalesman.Slm_NmAr, InvAstMarket.Mrkt_NmAr FROM MtsCustmr MtsCustmr left JOIN InvAstNutrbusn InvAstNutrbusn ON MtsCustmr.Nutr_No=InvAstNutrbusn.Nutr_No left JOIN InvAstCity InvAstCity ON MtsCustmr.City_No=InvAstCity.City_No left JOIN InvAstSalesman InvAstSalesman ON MtsCustmr.Slm_No=InvAstSalesman.Slm_No left JOIN InvAstMarket InvAstMarket ON MtsCustmr.Mrkt_No = InvAstMarket.Mrkt_No";
            }
            int sel_id = int.Parse(TextBox1.Text);
            ////-----------------------------------------------------\\\\\\\\\\
            if (RadioButtonList1.Items[0].Selected)
            {
                title += " " + "حسب الفرع" + " " + db.MainBranch.Where(o => o.Brn_No == sel_id).Select(o => o.Brn_NmAr).SingleOrDefault();
                query += " where MtsCustmr.Brn_No=" + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[1].Selected)
            {
                title += " " + "حسب مندوب المبيعات " +" " + db.InvAstSalesman.Where(o => o.Slm_No == sel_id).Select(o => o.Slm_NmAr).SingleOrDefault();
                query += " where MtsCustmr.Slm_No = " + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[2].Selected)
            {
                title += " " + "حسب نوع النشاط" + " " + db.InvAstNutrbusn.Where(o => o.Nutr_No == sel_id).Select(o => o.Nutr_NmAr).SingleOrDefault();
                query += " where MtsCustmr.Nutr_No = " + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[3].Selected)
            {
                title += " " + "حسب المدينة" + " " + db.InvAstCity.Where(o => o.City_No == sel_id).Select(o => o.City_NmAR).SingleOrDefault();
                query += " where MtsCustmr.City_No = " + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[4].Selected)
            {
                title += " " + "حسب المنطقة" + " " + db.InvAstArea.Where(o => o.Area_No == sel_id).Select(o => o.Area_NmAR).SingleOrDefault();
                query += " where MtsCustmr.Area_No = " + TextBox1.Text;
            }
            else if (RadioButtonList1.Items[5].Selected)
            {
                title += " " + "حسب مندوب التسويق" + " " + db.InvAstMarket.Where(o => o.Mrkt_No == sel_id).Select(o => o.Mrkt_NmAr).SingleOrDefault();
                query += " where MtsCustmr.Mrkt_No = " + TextBox1.Text;
            }
            ///---------------------------------------------------------\\\\\\\
            
            if(RadioButtonList3.Items[0].Selected)
            {
                query += " And [Cstm_Active] = 1";
            }
            else if(RadioButtonList3.Items[1].Selected)
            {
                query += " And [Cstm_Active] = 0";
            }
            else if(RadioButtonList3.Items[2].Selected)
            {
               
            }

            ///--------------------------------------------------------\\\\\\\
           
            if (RadioButtonList2.Items[2].Selected||RadioButtonList2.Items[3].Selected)
            {
                query += " And Cstm_No between " + DropDownList2.SelectedValue +  " And " + DropDownList3.SelectedValue;
            }
            

            Session["dbquery"]= query;
            Session["reportname"]=report;
            Session["title"] = title;

            Response.Redirect("cstmReports.aspx");
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList2.Items[2].Selected || RadioButtonList2.Items[3].Selected)
            {
                Label2.Visible = true;
                Label3.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;

                Label2.Text = "من عميل رقم";
                Label3.Text = "إلي عميل رقم";

                DropDownList2.DataTextField = "Cstm_Nmarb";
                DropDownList2.DataValueField = "Cstm_No";
                DropDownList2.DataSource = db.MtsCustmr.ToList();
                DropDownList2.DataBind();
                DropDownList2_SelectedIndexChanged(sender, e);
                DropDownList3.DataTextField = "Cstm_Nmarb";
                DropDownList3.DataValueField = "Cstm_No";
                DropDownList3.DataSource = db.MtsCustmr.ToList();
                DropDownList3.DataBind();
                DropDownList3_SelectedIndexChanged(sender, e);
            }

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