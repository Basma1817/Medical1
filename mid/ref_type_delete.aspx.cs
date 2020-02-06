using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ref_type_delete : System.Web.UI.Page
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
                DropDownList1.DataBind();
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.InvAstRefTyp.Find(id);
                TextBox1.Text = cn.RefTyp_NmEn.ToString();
                TextBox2.Text = cn.RefTyp_NmAr;
                TextBox3.Text = cn.RefTyp_NmEn;
                DropDownList1.SelectedValue = cn.RefTyp_No.ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("reftype.aspx");

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
                var cn = db.InvAstRefTyp.Find(id);
                db.InvAstRefTyp.Remove(cn);
                db.SaveChanges();
                Response.Redirect("reftype.aspx");
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