using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_ast_status : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (db.FixdAstStatus.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.FixdAstStatus.Max(o => o.AsetStat_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FixdAstStatus f = new FixdAstStatus()
            {
               AsetStat_No =Convert.ToInt16( TextBox1.Text),
               AsetStat_NmAr = TextBox2.Text


            };
            db.FixdAstStatus.Add(f);
            db.SaveChanges();
            Response.Redirect("asets_status.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("asets_status.aspx");
        }
    }
}