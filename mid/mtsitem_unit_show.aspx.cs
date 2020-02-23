using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mtsitem_unit_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;

                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsItmunit.Find(id);
                TextBox3.Text = cn.Unit_No.ToString();
                TextBox4.Text = cn.Unit_NmAr;
                TextBox5.Text = cn.Unit_NmEn;

            }
        }
    
    protected void Button1_Click(object sender, EventArgs e)
        {
        Response.Redirect("mtsitem_unit.aspx");
      }
    }
}     