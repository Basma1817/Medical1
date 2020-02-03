using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class country_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                var id = int.Parse(Request.QueryString["con"]);
                var cn = db.InvAstCntry.Find(id);
                TextBox1.Text = cn.Cntry_No.ToString();
                TextBox2.Text = cn.Cntry_NmAr;
                TextBox3.Text = cn.Cntry_Nm;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("country.aspx");
        }
    }
}