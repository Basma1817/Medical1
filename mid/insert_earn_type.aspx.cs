using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_earn_type : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.HrAstErngtyp.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.HrAstErngtyp.Max(o => o.Earning_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HrAstErngtyp h = new HrAstErngtyp()
            {
                Earning_No=Convert.ToInt16(TextBox1.Text),
                Earning_NmAr=TextBox2.Text,
                Earning_NmEn=TextBox3.Text

            };
            db.HrAstErngtyp.Add(h);
            db.SaveChanges();
            Response.Redirect("py_earn_type.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("py_earn_type.aspx");

        }
    }
}