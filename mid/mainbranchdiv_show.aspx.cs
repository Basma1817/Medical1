using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mainbranchdiv_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MainBranchDlv.Find(id);
                TextBox1.Text = cn.Dlv_Stor.ToString();
                TextBox2.Text = cn.Dlv_NmAr.ToString();
                TextBox3.Text = cn.Dlv_NmEn.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainbranchdiv.aspx");

        }
    }
}