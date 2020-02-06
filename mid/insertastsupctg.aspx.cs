using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insertsupctg : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (db.Astsupctg.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.Astsupctg.Max(o => o.Supctg_No) + 1).ToString();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // var id = int.Parse(Request.QueryString["no"]);
            //var cn = db.Astsupctg.Find(id);
           
            Astsupctg cn = new Astsupctg();
            cn.Supctg_No = Convert.ToInt16(TextBox1.Text);
            cn.Sup_Cstm = Convert.ToInt16(DropDownList1.SelectedValue);
            cn.Supctg_Nmar = TextBox2.Text;
            cn.Supctg_Nmen = TextBox3.Text;
            db.Astsupctg.Add(cn);
            db.SaveChanges();
            Response.Redirect("astsupctg.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("astsupctg.aspx");
        }
        }
}