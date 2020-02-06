using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertsalesman : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataTextField = "Brn_Nm";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();
                TextBox1.Enabled = false;
                if (db.InvAstSalesman.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                  
                TextBox1.Text = (db.InvAstSalesman.Max(o => o.Slm_No) + 1).ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            InvAstSalesman cn = new InvAstSalesman();
            cn.Slm_No = Convert.ToInt16(TextBox1.Text);
            cn.Slm_NmAr = TextBox2.Text;
            cn.Slm_NmEn = TextBox3.Text;
            cn.Fbal_Db = Convert.ToDecimal(TextBox4.Text);
            cn.Brn_No = Convert.ToInt16( DropDownList1.SelectedValue);
            cn.Fbal_CR = Convert.ToDecimal(TextBox5.Text);
            db.InvAstSalesman.Add(cn);
            db.SaveChanges();
            Response.Redirect("salesman.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("salesman.aspx");
        }
        }
}