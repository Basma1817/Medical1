using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertastinvadj : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (db.GLAstinvAdj.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.GLAstinvAdj.Max(o => o.ACC_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GLAstinvAdj cn = new GLAstinvAdj();
           cn.ACC_No = Convert.ToInt32(TextBox1.Text);
            cn.Acc_NmAr = TextBox2.Text;
            cn.Acc_NmEn = TextBox3.Text;
            db.GLAstinvAdj.Add(cn);
            db.SaveChanges();
            Response.Redirect("astinvadj.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("astinvadj.aspx");

        }
    }

}