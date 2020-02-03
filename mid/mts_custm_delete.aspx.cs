using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_custm_delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox26.Enabled = false;
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_NmAr";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();



                DropDownList2.DataValueField = "Cntry_No";
                DropDownList2.DataTextField = "Cntry_NmAr";
                DropDownList2.DataSource = db.InvAstCntry.ToList();
                DropDownList2.DataBind();



                DropDownList7.DataValueField = "Area_No";
                DropDownList7.DataTextField = "Area_NmAR";
                DropDownList7.DataSource = db.InvAstArea.ToList();
                DropDownList7.DataBind();



                DropDownList4.DataValueField = "City_No";
                DropDownList4.DataTextField = "City_NmAR";
                DropDownList4.DataSource = db.InvAstCity.ToList();
                DropDownList4.DataBind();


                DropDownList8.DataValueField = "Slm_No";
                DropDownList8.DataTextField = "Slm_NmAr";
                DropDownList8.DataSource = db.InvAstSalesman.ToList();
                DropDownList8.DataBind();



                DropDownList5.DataValueField = "Nutr_No";
                DropDownList5.DataTextField = "Nutr_NmAr";
                DropDownList5.DataSource = db.InvAstNutrbusn.ToList();
                DropDownList5.DataBind();

                DropDownList6.DataValueField = "Mrkt_No";
                DropDownList6.DataTextField = "Mrkt_NmAr";
                DropDownList6.DataSource = db.InvAstMarket.ToList();
                DropDownList6.DataBind();

                var id = int.Parse(Request.QueryString["no"]);
                var cn = (from p in db.MtsCustmr
                            where p.Cstm_No == id
                            select p).SingleOrDefault();

                DropDownList1.SelectedValue = cn.Brn_No.ToString();
                DropDownList2.SelectedValue = cn.Cntry_No.ToString();
                TextBox26.Text = cn.Cstm_No.ToString();
                DropDownList7.SelectedValue = cn.Area_No.ToString();
                TextBox27.Text = cn.Cstm_NmAr;
                TextBox1.Text = cn.Cstm_NmEn;
                DropDownList4.SelectedValue = cn.City_No.ToString();
                TextBox2.Text = cn.Cstm_Adr;
                DropDownList8.SelectedValue = cn.Slm_No.ToString();
                DropDownList5.SelectedValue = cn.Nutr_No.ToString();
                TextBox3.Text = cn.Cstm_Email;
                DropDownList6.SelectedValue = cn.Mrkt_No.ToString();
                TextBox4.Text = cn.Cstm_Tel;
                //TextBox5.Text = cn.Notes;
                TextBox6.Text = cn.Mobile;
                //CheckBox1.Checked = Convert.ToBoolean(cn.DeserveDiscounts);
                CheckBox2.Checked = Convert.ToBoolean(cn.AgeNotCalculate);
                TextBox14.Text = cn.Acc_No.ToString();
                TextBox15.Text = cn.Fbal_CR.ToString();
                TextBox16.Text = cn.Fbal_Db.ToString();
                //TextBox17.Text = cn.Fbal_BalAgG30.ToString();
                //TextBox18.Text = cn.Fbal_BalAgG60.ToString();
                //TextBox19.Text = cn.Fbal_BalAgG90.ToString();
                //TextBox20.Text = cn.Fbal_BalAgG90.ToString();
                //TextBox21.Text = cn.Fbal_BalAgG120.ToString();
                //TextBox22.Text = cn.Cntct_Prsn1;
                //TextBox23.Text = cn.TitL1;
                TextBox24.Text = cn.Mobile1;
                //TextBox25.Text = cn.Email1;




            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["no"]);
            if (id == 0)
            {

            }
            else
            {
                // delete selected row
                
                var cn = (from p in db.MtsCustmr
                            where p.Cstm_No == id
                            select p).SingleOrDefault();
                db.MtsCustmr.Remove(cn);
                db.SaveChanges();
                Response.Redirect("mts_custmr.aspx");
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
   
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_custmr.aspx");
        }

    }
}