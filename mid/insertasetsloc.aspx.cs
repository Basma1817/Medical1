using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertasetsloc : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Enabled = false;
            if (!IsPostBack)
            {
                if (db.FixdAsetsLoc.Count() == 0)
                    TextBox3.Text = (1).ToString();
                else
                    TextBox3.Text = (db.FixdAsetsLoc.Max(o => o.Loc_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FixdAsetsLoc cn = new FixdAsetsLoc();
            cn.Loc_No = Convert.ToInt16(TextBox3.Text);
            cn.Loc_Nm = TextBox2.Text;
            cn.Acc_DB = Convert.ToInt32(TextBox3.Text);
            cn.Ownr_No= Convert.ToInt16(TextBox4.Text);
            db.FixdAsetsLoc.Add(cn);
            db.SaveChanges();
            Response.Redirect("asets_loc.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("asets_loc.aspx");
        }
        }
}