using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class asets_loc_delete : System.Web.UI.Page
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
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("asets_loc.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["no"]);
            if (id == 0)
            {

            }
            else
            {
                // delete selected row
                var cn = db.FixdAsetsLoc.Find(id);
                db.FixdAsetsLoc.Remove(cn);
                db.SaveChanges();
                Response.Redirect("asets_loc.aspx");
                // load data to grid view
                //var query = from p in db.ActivityTypes
                //                // where p.Actvty_No == id
                //            select new
                //            {
                //                الإسم_بالإنجليزي = p.Name_Eng,
                //                الإسم_بالعربي = p.Name_Arb,
                //                الرقم = p.Actvty_No
                //            };
                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();
            }
        }
    }
}