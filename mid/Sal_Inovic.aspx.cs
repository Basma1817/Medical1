using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace mid
{
    public partial class Sal_Inovic : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //calender
            if (!IsPostBack)
            {
                txt_pill.Text = (db.InvLodhdr.Max(p => p.Doc_No) + 1).ToString();

                txt_DateEN.Text = DateTime.Now.ToString("dd/MM/yyyy");
                CultureInfo date_ar = new CultureInfo("ar_SA");
                string dateAR = Convert.ToDateTime(txt_DateEN.Text).ToString("dd/MM/yyyy", date_ar);
                TXT_DateAR.Text = dateAR.ToString();
                //fill dropdownlist of activity
                ddl_activity.DataValueField = "Actvty_No";
                ddl_activity.DataTextField = "Name_Arb";
                ddl_activity.DataSource = db.ActivityTypes.ToList();
                ddl_activity.DataBind();
                //fill dropdownlist for branch
                ddl_branch.DataValueField = "Brn_No";
                ddl_branch.DataTextField = "Brn_NmAr";
                ddl_branch.DataSource = db.MainBranch.ToList();
                ddl_branch.DataBind();

                //fill dropwonlist of payment type
                ddl_pay.DataValueField = "Pym_No";
                ddl_pay.DataTextField = "Pym_Nmar";
                ddl_pay.DataSource = db.InvAstPymwys.ToList();
                ddl_pay.DataBind();
                //fill dropdownlist of mostwd3
                ddl_mostwd3.DataValueField = "Dlv_Stor";
                ddl_mostwd3.DataTextField = "Dlv_NmAr";
                ddl_mostwd3.DataSource = db.MainBranchDlv.ToList();
                ddl_mostwd3.DataBind();
                //fill dropdownlist of sales man
                ddl_sales_man.DataValueField = "Slm_No";
                ddl_sales_man.DataTextField = "Slm_NmAr";
                ddl_sales_man.DataSource = db.InvAstSalesman.ToList();
                ddl_sales_man.DataBind();
                //fill dropdownlist of customer
                ddl_customer.DataValueField = "Cstm_No";
                ddl_customer.DataTextField = "Cstm_NmAr";
                ddl_customer.DataSource = db.MtsCustmr.ToList();
                ddl_customer.DataBind();

                //fill dropdownlist of ref type
                ddl_ref_type.DataValueField = "RefTyp_No";
                ddl_ref_type.DataTextField = "RefTyp_NmAr";
                ddl_ref_type.DataSource = db.InvAstRefTyp.ToList();
                ddl_ref_type.DataBind();
                ddl_ref_type.Items.Insert(0, new ListItem(" نوع المرجع", ""));
                //fill dropdownlist of اسم الصنف
                ddl_itemname.DataValueField = "Itm_No";
                ddl_itemname.DataTextField = "Itm_NmAr";
                ddl_itemname.DataSource = db.MtsItmMfs.ToList();
                ddl_itemname.DataBind();
                ddl_ref_type.Items.Insert(0, new ListItem(" إسم الصنف ", ""));
                //fill dropdownlist of unit
                ddl_unit.DataValueField = "Unit_No";
                ddl_unit.DataTextField = "Unit_NmAr";
                ddl_unit.DataSource = db.ItmsUnit.ToList();
                ddl_unit.DataBind();

                //fill dropdownlist for company 
                //ddl_company.DataValueField = "Cmp_No";
                //ddl_company.DataTextField = "Cmp_Nm";
                //ddl_company.DataSource = db.MainCmpnam.ToList();
                //ddl_company.DataBind();
            }
        }
        //event for calender
       

        //company and activity


        //protected void ddl_company_SelectedIndexChanged(object sender , EventArgs e)
        //{
        //    int no = int.Parse(ddl_company.SelectedValue);
        //    ddl_activity.DataValueField = "Actvty_No";
        //    ddl_activity.DataTextField = "Name_Arb";
        //    ddl_activity.DataSource = db.ActivityTypes.Where(p => p.cmp_no == no).ToList();
        //    ddl_activity.DataBind();
        //}
        //ddl event to fill text of customer number
        //protected void ddl_customer_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    txt_customer_no.Text = ddl_customer.SelectedValue;
        //}
        protected void ddl_customer_SelectedIndexChanged(object sender , EventArgs e)
        {
            //fill text box of customer number
            txt_customer_no.Text = ddl_customer.SelectedValue;

            int cust_no = int.Parse(ddl_customer.SelectedValue);
            //fill textbox of pay time
            var query = db.MtsCustmr.Where(p => p.Cstm_No == cust_no).Select(p => p.Credit_Days).FirstOrDefault();
            txt_pay_time.Text = query.ToString();
            // string dateAR = Convert.ToDateTime(txt_DateEN.Text).ToString("dd/MM/yyyy");
            // string pay_date = txt_pay_time.Text.ToString();
            //txt_pay_date.Text = pay_date.ToString();

            //fill textbox of pay date

            Int64 dd = Convert.ToInt64(txt_pay_time.Text);
            txt_pay_date.Text = DateTime.Now.AddDays(dd).ToString("dd/MM/yyyy");
       ///     txt_pay_date.Text = pay_date + txt_pay_time.ToString();
            //fill textbox of pay time
            //fill dropdownlist of sales man
            // ddl_sales_man.DataValueField = "Slm_No";
            //  ddl_sales_man.DataTextField = "Slm_NmAr";
            //  ddl_sales_man.DataSource = db.MtsCustmr.Select(p=>p.Slm_No).ToList();
            // ddl_sales_man.DataBind();


        }

        protected void btn_cancel_click(object sender, EventArgs e)
        {
            Response.Redirect("SalesInvoic.aspx");
        }
        //dropdownlist for company
        protected void ddl_activity_SelectedIndexChanged(object sender, EventArgs e)
        {
            int act_no = int.Parse(ddl_activity.SelectedValue);
            ddl_company.DataValueField = "Cmp_No";
            ddl_company.DataTextField = "Cmp_Nm";
          //  ddl_company.DataSource = db.MainCmpnam.Where(p => p.Activ_typ_no == act_no).ToList();
            ddl_company.DataSource = db.MainCmpnam.ToList();
            ddl_company.DataBind();
        }
        //event for arabic date
        protected void txt_DateEN_TextChanged(object sender, EventArgs e)
        {
            CultureInfo date_ar = new CultureInfo("ar_SA");
             string dateAR = Convert.ToDateTime(txt_DateEN.Text).ToString("dd/MM/yyyy",date_ar);
             TXT_DateAR.Text = dateAR.ToString();

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            //save values in data base
            short comp_No = short.Parse(ddl_company.SelectedValue);
            short activity_No = short.Parse(ddl_activity.SelectedValue);
            short store_Id = short.Parse(ddl_branch.SelectedValue);
            short refType = short.Parse(ddl_ref_type.SelectedValue);
            short mostwd3 = short.Parse(ddl_mostwd3.SelectedValue);
            short payment = short.Parse(ddl_pay.SelectedValue);
            int customer = int.Parse(txt_customer_no.Text);
           // int customer = int.Parse(ddl_customer.SelectedValue);
            short salesMan = short.Parse(ddl_sales_man.SelectedValue);
            txt_pill.Text = (db.InvLodhdr.Max(p => p.Doc_No) + 1).ToString();
            //  TextBox1.Text = (db.AstDprtmnt.Max(o => o.Dpm_No) + 1).ToString();


            //    var query = db.InvLodhdr.Where(p => p.Doc_Ty == 13).Select(p => p.Doc_No).Last();
            InvLodhdr newInvlodhdr = new InvLodhdr()
            {
                Cmp_No = comp_No,
                Actvty_No = activity_No,
                StoreID = store_Id,
                Doc_Ty = 13,
                Doc_No = int.Parse(txt_pill.Text),
                Doc_Dt = txt_DateEN.Text,
                Doc_DtAr = TXT_DateAR.Text,
                Reftyp_No = refType,
                Dlv_Stor = mostwd3,
                Pym_No = payment,
                Cstm_No = customer,
                Slm_No = salesMan,
                Credit_Days = int.Parse(txt_pay_time.Text),
                Pym_Dt = txt_pay_date.Text,
                //neww
                //Notes = txt_note1.Text,
                //Tot_Cost=int.Parse(txt_total.Text)



            };
           
            
            
            
            db.InvLodhdr.Add(newInvlodhdr);
            db.SaveChanges();
           
            Response.Redirect("SalesInvoic.aspx");

        }

       



        protected void txt_sell_price_TextChanged(object sender, EventArgs e)
        {
            decimal quantity = decimal.Parse(txt_quantity.Text);
            decimal price = decimal.Parse(txt_sell_price.Text);
            txt_price.Text = txt_sell_price.Text;
            txt_total.Text = (quantity * price).ToString();
            txt_total_value.Text = (quantity * price).ToString();
            
            
        }

        protected void txt_sell_discount_TextChanged(object sender, EventArgs e)
        {
            decimal discount = decimal.Parse(txt_sell_discount.Text);
            decimal total = decimal.Parse(txt_total_value.Text);
            txt_discount_value.Text = (total * discount / 100).ToString();
            decimal dd = decimal.Parse(txt_discount_value.Text);
            txt_after_discount.Text = (total - dd).ToString();
        }

        protected void txt_tax_TextChanged(object sender, EventArgs e)
        {
            decimal tax = decimal.Parse(txt_tax.Text);
            decimal total = decimal.Parse(txt_total_value.Text);
            txt_tax_value1.Text = (total * tax / 100).ToString();
            decimal tax_value = decimal.Parse(txt_tax_value1.Text);
            txt_tax_value.Text= (total * tax / 100).ToString();
            decimal dd = decimal.Parse(txt_discount_value.Text);
            txt_after_discount.Text = (total - dd).ToString();
            decimal after_discount = decimal.Parse(txt_after_discount.Text);
            txt_net.Text = (after_discount + tax_value).ToString();
        }

        protected void btn_save_total_Click(object sender, EventArgs e)
        {
            short comp_No = short.Parse(ddl_company.SelectedValue);
            short activity_No = short.Parse(ddl_activity.SelectedValue);
            short store_Id = short.Parse(ddl_branch.SelectedValue);
            short refType = short.Parse(ddl_ref_type.SelectedValue);
            short mostwd3 = short.Parse(ddl_mostwd3.SelectedValue);
            short payment = short.Parse(ddl_pay.SelectedValue);
            int itemName = int.Parse(ddl_itemname.SelectedValue);
            short unitNo = short.Parse(ddl_unit.SelectedValue);
            //txt_pill.Text = (db.InvLodhdr.Max(p => p.Doc_No) + 1).ToString();

            InvLoddtl newinvloddt = new InvLoddtl()
            {
                //save valuse in data base in invloddt
            
                Cmp_No= comp_No,
                Actvty_No= activity_No,
                StoreID= store_Id,
                Doc_Ty=13,
                Doc_No = int.Parse(txt_pill.Text),
                //دي محتاجه تبقي dynamic
                Ln_No=17,
                Dlv_Stor= mostwd3,
                Doc_Dt =Convert.ToDateTime( txt_DateEN.Text),
             // err  Doc_DtAr=TXT_DateAR.Text,
                Batch_No=txt_patch.Text,
                Loc_No=short.Parse(txt_siteNo.Text),
                Qty=decimal.Parse( txt_quantity.Text),
                Itm_Sal= decimal.Parse(txt_sell_price.Text),
                Exp_Date=txt_expire_date.Text,
                Itm_No=int.Parse(txt_itemNo.Text),
                Kind_No= itemName,
                Unit_No= unitNo,
                Disc1_Val=decimal.Parse( txt_discount_value.Text),
                //FcTitm_Sal=decimal.Parse( txt_sell_price.Text),
                Taxv_Extra=decimal.Parse(txt_tax_value1.Text),
                Tot_Expens=decimal.Parse(txt_total.Text),
                Pym_No= payment


            };
            db.InvLoddtl.Add(newinvloddt);
            db.SaveChanges();

        }



       
    }
}