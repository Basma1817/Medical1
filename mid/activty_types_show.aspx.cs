using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class activty_types_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.ActivityTypes.Find(id);
                TextBox1.Text = cn.Actvty_No.ToString();
                TextBox2.Text = cn.Name_Arb;
                TextBox3.Text = cn.Name_Eng;

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("activity_types.aspx");
        }
    }
}