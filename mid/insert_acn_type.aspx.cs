using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_acn_type : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.GLAstAcntyp.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.GLAstAcntyp.Max(o => o.Ac_ty) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //var id = int.Parse(Request.QueryString["no"]);
            GLAstAcntyp cn = new GLAstAcntyp();
            cn.Ac_ty = short.Parse(TextBox1.Text);
            cn.Ac_NmAr = TextBox2.Text;
            cn.Ac_NmEn = TextBox3.Text;
            db.GLAstAcntyp.Add(cn);
            db.SaveChanges();
            Response.Redirect("glastacntyp.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("glastacntyp.aspx");
        }

    }
}