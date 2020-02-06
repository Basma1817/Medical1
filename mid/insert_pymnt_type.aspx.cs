using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_pymnt_type : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.HrAstPymntype.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.HrAstPymntype.Max(o => o.Pymnt_No) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HrAstPymntype h = new HrAstPymntype()
            {
                Pymnt_No=Convert.ToInt16(TextBox1.Text),
             Pymnt_NmAr=TextBox2.Text,
                Pymnt_NmEn=TextBox3.Text

            };
            db.HrAstPymntype.Add(h);
            db.SaveChanges();
            Response.Redirect("pymnt_type.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pymnt_type.aspx");

        }
    }
}