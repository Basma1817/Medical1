using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_acn_bnk : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.GLAstAcnBnk.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                   
            TextBox1.Text = (db.GLAstAcnBnk.Max(o => o.ACC_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GLAstAcnBnk g = new GLAstAcnBnk()
            {
             ACC_No=Convert.ToInt32(TextBox1.Text),
             Acc_NmAr=TextBox2.Text,
             Acc_NmEn=TextBox3.Text,
            Acc_Bank_No=TextBox4.Text,
            Cash_Rpt=CheckBox1.Checked,
            Chk_Voucher=CheckBox2.Checked,
            Csh_voucher=CheckBox3.Checked,
            Rcp_Voucher=CheckBox4.Checked

            };
            db.GLAstAcnBnk.Add(g);
            db.SaveChanges();
            Response.Redirect("glastacnbnk.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("glastacnbnk.aspx");
        }
        }
    }