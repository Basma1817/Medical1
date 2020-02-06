using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class glast_acn_bnk_delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.GLAstAcnBnk.Find(id);
                TextBox1.Text = cn.ACC_No.ToString();
                TextBox2.Text = cn.Acc_NmAr.ToString();
                TextBox3.Text = cn.Acc_NmEn.ToString();
                TextBox4.Text = cn.Acc_Bank_No;
                CheckBox4.Checked = cn.Rcp_Voucher.Value;
                CheckBox3.Checked = cn.Csh_voucher.Value;
                CheckBox2.Checked = cn.Chk_Voucher.Value;
                CheckBox1.Checked = cn.Cash_Rpt.Value;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("glastacnbnk.aspx");

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
                var cn = db.GLAstAcnBnk.Find(id);
                db.GLAstAcnBnk.Remove(cn);
                db.SaveChanges();
                Response.Redirect("glastacnbnk.aspx");
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