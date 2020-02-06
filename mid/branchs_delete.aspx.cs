using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class branchs_delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox2.Enabled = false;
                DropDownList2.DataValueField = "Cmp_No";
                DropDownList2.DataTextField = "Cmp_Nm";
                DropDownList2.DataSource = db.MainCmpnam.ToList();
                DropDownList2.DataBind();

                //DropDownList1.DataValueField = "Brn_No";
                //DropDownList1.DataTextField = "Brn_Nm";
                //DropDownList1.DataSource = db.MainBranch.ToList();
                //DropDownList1.DataBind();

                var id = int.Parse(Request.QueryString["Brn_No"]);
                var branch = db.MainBranch.Find(id);



                TextBox2.Text = branch.Brn_No.ToString();
                TextBox3.Text = branch.Brn_Adrs;
                TextBox4.Text = branch.Brn_Email;
                TextBox5.Text = branch.Brn_Tel;

                TextBox6.Text = branch.Acc_TaxExtraDb.ToString();
                TextBox7.Text = branch.Acc_TaxExtraCR.ToString();
                TextBox8.Text = branch.Acc_Sales.ToString();
                TextBox9.Text = branch.Acc_RetSal.ToString();
                TextBox10.Text = branch.Acc_Cashier.ToString();
                TextBox11.Text = branch.Acc_Customer.ToString();
                TextBox12.Text = branch.Cmp_RetPurchAcc.ToString();
                TextBox13.Text = branch.Csh_SalAcc.ToString();
                TextBox14.Text = branch.Acc_Suplier.ToString();
                TextBox15.Text = branch.Cmp_PurchaseAcc.ToString();
                TextBox16.Text = branch.Csh_RetsalAcc.ToString();
                TextBox17.Text = branch.Csh_SalAcc.ToString();
                TextBox18.Text = branch.Cmp_RetPurchAcc.ToString();
                TextBox19.Text = branch.Csh_PurAcc.ToString();
                TextBox20.Text = branch.Cost_SalInvt.ToString();
                TextBox21.Text = branch.Cost_INVt.ToString();
                TextBox22.Text = branch.Inv_Undprs.ToString();
                TextBox23.Text = branch.Cmp_CshPurDiscAcc.ToString();
                TextBox24.Text = branch.Agnt_CshPurDiscAcc.ToString();
                TextBox25.Text = branch.Agnt_BnusPurDiscAcc.ToString();
                TextBox26.Text = branch.Acc_Suplier2.ToString();
                TextBox27.Text = branch.Brn_NmAr.ToString();
                ////DropDownList1.SelectedValue = branch.Brn_No.ToString();
                DropDownList2.SelectedValue = branch.Cmp_No.ToString();

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("branch.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Brn_No"]);
            if (id == 0)
            {

            }
            else
            {
                // delete selected row
                var branch = db.MainBranch.Find(id);
                db.MainBranch.Remove(branch);
                db.SaveChanges();
                Response.Redirect("branch.aspx");
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
    }
}