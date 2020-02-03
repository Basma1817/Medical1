using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ast_area_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataValueField = "Cntry_No";
                DropDownList1.DataTextField = "Cntry_NmAr";
                DropDownList1.DataSource = db.InvAstCntry.ToList();
                DropDownList1.DataBind();
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.InvAstArea.Find(id);
                TextBox1.Text = cn.Area_No.ToString();
                TextBox2.Text = cn.Area_NmAR;
                TextBox3.Text = cn.Area_NmEN;
                DropDownList1.SelectedValue = cn.Cntry_No.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("astarea.aspx");
        }
    }
}