using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_jrntyp : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Enabled = false;
                if (db.GLAstJrntyp.Count() == 0)
                    TextBox1.Text = (1).ToString();
                else
                    TextBox1.Text = (db.GLAstJrntyp.Max(o => o.Jr_Ty) + 1).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GLAstJrntyp g = new GLAstJrntyp()
            {
                Jr_Ty=Convert.ToInt16(TextBox1.Text),
                Jrty_Nm = TextBox2.Text,
                Jrty_NmEn=TextBox3.Text


            };
            db.GLAstJrntyp.Add(g);
            db.SaveChanges();
            Response.Redirect("gljrntyp.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("gljrntyp.aspx");
        }
        }
    }