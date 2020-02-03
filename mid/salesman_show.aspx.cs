using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class salesman_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox1.Enabled = false;
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_Nm";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.InvAstSalesman.Find(id);
                TextBox1.Text = cn.Slm_No.ToString();
                TextBox2.Text = cn.Slm_NmAr;
                TextBox3.Text = cn.Slm_NmEn;
                TextBox4.Text = cn.Fbal_Db.ToString();

                TextBox5.Text = cn.Fbal_CR.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("salesman.aspx");

        }
    }
}