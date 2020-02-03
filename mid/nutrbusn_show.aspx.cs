using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class nutrbusn_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                TextBox2.Enabled = false;
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.InvAstNutrbusn.Find(id);
                TextBox1.Text = cn.Short_Eng.ToString();
                TextBox2.Text = cn.Nutr_No.ToString();
                TextBox3.Text = cn.Nutr_NmAr;
                TextBox4.Text = cn.Nutr_Nm;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("nutrbusn.aspx");

        }
    }
}