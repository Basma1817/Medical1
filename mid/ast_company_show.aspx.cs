using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ast_company_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.AstCompany.Find(id);
                TextBox1.Text = cn.Cmp_No.ToString();
                TextBox2.Text = cn.Cmp_NmAr;
                TextBox3.Text = cn.Cmp_NmEn;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("astcompany.aspx");
        }
    }
}