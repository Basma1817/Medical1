using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ref_type_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                DropDownList1.DataValueField = "Main_Reftyp";
                DropDownList1.DataTextField = "RefTyp_NmAr";
                //DropDownList1.DataSource = db.InvAstRefTypMain.ToList();
                //DropDownList1.DataBind();
                //var id = int.Parse(Request.QueryString["no"]);
                //var cn = db.InvAstRefTyp.Find(id);
                //TextBox1.Text = cn.RefTyp_No.ToString();
                //TextBox2.Text = cn.RefTyp_NmAr;
                //TextBox3.Text = cn.RefTyp_NmEn;
                //DropDownList1.SelectedValue = cn.RefTyp_No.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("reftype.aspx");

        }
    }
}