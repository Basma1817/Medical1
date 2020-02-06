using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class ast_sup_ctg_show : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.Astsupctg.Find(id);
                TextBox1.Text = cn.Supctg_No.ToString();
                DropDownList1.SelectedValue = cn.Sup_Cstm.ToString();
                TextBox2.Text = cn.Supctg_Nmar;
                TextBox3.Text = cn.Supctg_Nmen;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("astsupctg.aspx");
        }
    }
}