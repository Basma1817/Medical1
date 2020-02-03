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
                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();

                int no = int.Parse(DropDownList1.SelectedValue);

                DropDownList2.DataTextField = "Name_Arb";
                DropDownList2.DataValueField = "Actvty_No";
                DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
                DropDownList2.DataBind();
               
                TextBox1.Enabled = false;
                if (db.MtsItmunit.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else

                    TextBox1.Text = (db.MtsItmunit.Max(o => o.Unit_No) + 1).ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtsitem_unit.aspx");
        }

    }
}