using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_nutrbusn : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox2.Enabled = false;
                if (db.InvAstNutrbusn.Count() == 0)
                    TextBox2.Text = (1).ToString();
                else
                    TextBox2.Text = (db.InvAstNutrbusn.Max(o => o.Nutr_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InvAstNutrbusn i = new InvAstNutrbusn()
            {
                Nutr_No=Convert.ToInt16(TextBox2.Text),
                Short_Eng = TextBox1.Text,
                Nutr_NmAr=TextBox3.Text,
                Nutr_Nm=TextBox4.Text
            };
            db.InvAstNutrbusn.Add(i);
            db.SaveChanges();
            Response.Redirect("nutrbusn.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("nutrbusn.aspx");

        }
    }
}