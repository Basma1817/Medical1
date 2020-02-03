using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class gljrnal_type_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.GLAstJrntyp.Find(id);
                TextBox1.Text = cn.Jr_Ty.ToString();
                TextBox2.Text = cn.Jrty_Nm.ToString();
                TextBox3.Text = cn.Jrty_NmEn.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("gljrntyp.aspx");
        }
    }
}