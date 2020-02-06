using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertcurncy : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.AstDprtmnt.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                   
                TextBox1.Text = (db.InvAstCurncy.Max(o => o.Curncy_No) + 1).ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            InvAstCurncy cn = new InvAstCurncy();
            cn.Curncy_No = Convert.ToInt16(TextBox1.Text); 
            cn.Curncy_Nmar = TextBox2.Text;
            cn.Curncy_Nm = TextBox3.Text;
            cn.Curncy_Rate = decimal.Parse(TextBox4.Text);
            db.InvAstCurncy.Add(cn);
            db.SaveChanges();
            Response.Redirect("curncy.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("curncy.aspx");
        }

        }
}