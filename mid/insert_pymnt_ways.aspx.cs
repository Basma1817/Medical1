using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_pymnt_ways : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.LcPymwys.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.LcPymwys.Max(o => o.Pym_No) + 1).ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            LcPymwys p = new LcPymwys()
            {
                Pym_No=Convert.ToInt16(TextBox1.Text),
                Pym_Nm=TextBox2.Text,
                Pym_Nmar=TextBox3.Text

            };
            db.LcPymwys.Add(p);
            db.SaveChanges();
            Response.Redirect("lcpymwys.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("lcpymwys.aspx");

        }
    }
}