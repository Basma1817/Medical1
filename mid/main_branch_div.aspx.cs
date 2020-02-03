using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class main_branch_div : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList1.DataTextField = "Brn_NmAr";
            //DropDownList1.DataValueField = "Brn_No";
            //DropDownList1.DataSource =db.MainBranch.ToList();
            //DropDownList1.DataBind();
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.AstDprtmnt.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.MainBranchDlv.Max(o => o.Dlv_Stor) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MainBranchDlv d = new MainBranchDlv()
            {
                Dlv_Stor = Convert.ToInt16(TextBox1.Text),
                Dlv_NmAr = TextBox2.Text,
                Dlv_NmEn = TextBox3.Text,
                

            };
            db.MainBranchDlv.Add(d);
            db.SaveChanges();
            Response.Redirect("mainbranchdiv.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainbranchdiv.aspx");
        }
    }
    }