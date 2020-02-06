using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class updatedele_asetsloc : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox3.Enabled = false;

                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.FixdAsetsLoc.Find(id);
                
                TextBox2.Text = cn.Loc_Nm;
                TextBox3.Text = cn.Loc_No.ToString();
                TextBox4.Text = cn.Ownr_No.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = int.Parse(Request.QueryString["no"]);
            var cn = db.FixdAsetsLoc.Find(id);
          
            cn.Loc_Nm= TextBox2.Text;
            cn.Loc_No= Convert.ToInt16( TextBox3.Text);
            cn.Ownr_No= Convert.ToInt16( TextBox4.Text );
            db.SaveChanges();
            Response.Redirect("asets_loc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var id = int.Parse(Request.QueryString["no"]);
            var cn = db.FixdAsetsLoc.Find(id);
            db.FixdAsetsLoc.Remove(cn);
            db.SaveChanges();
            Response.Redirect("asets_loc.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("asets_loc.aspx");
        }
        }
}