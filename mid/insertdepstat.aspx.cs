using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertdepstat : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.FixdDepStat.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                  
                TextBox1.Text = (db.FixdDepStat.Max(o => o.DeprSt_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FixdDepStat cn = new FixdDepStat();
            cn.DeprSt_No = Convert.ToInt16(TextBox1.Text);
            cn.DeprSt_Nm = TextBox2.Text ;
            cn.Type =Convert.ToInt16(TextBox3.Text);
            db.FixdDepStat.Add(cn);
            db.SaveChanges();
            Response.Redirect("depstat.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("depstat.aspx");

        }
    }
}