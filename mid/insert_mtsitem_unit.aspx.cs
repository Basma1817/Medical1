using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_mtsitem_unit : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "";
            if (!Page.IsPostBack)
            {
                

                TextBox3.Enabled = false;
                if (db.MtsItmunit.Count() == 0)
                    TextBox3.Text = (1).ToString();
                else

                    TextBox3.Text = (db.MtsItmunit.Max(o => o.Unit_No) + 1).ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           MtsItmunit cn = new MtsItmunit();
          

            cn.Unit_No = short.Parse(TextBox3.Text);
            cn.Unit_NmAr = TextBox4.Text;
            cn.Unit_NmEn = TextBox5.Text;

            db.MtsItmunit.Add(cn);
            db.SaveChanges(); 
            Response.Redirect("mtsitem_unit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtsitem_unit.aspx");
        }


    }
}