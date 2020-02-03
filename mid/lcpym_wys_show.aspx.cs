using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class lcpym_wys_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.LcPymwys.Find(id);
                TextBox1.Text = cn.Pym_No.ToString();
                TextBox2.Text = cn.Pym_Nmar.ToString();
                TextBox3.Text = cn.Pym_Nm.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LcPymwys.aspx");
        }
    }
}