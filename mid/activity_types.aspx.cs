using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class activity_types : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();

            var query = from p in db.ActivityTypes
                       // where p.Actvty_No == id
                        select new
                        {
                            الإسم_بالإنجليزي = p.Name_Eng,
                            الإسم_بالعربي = p.Name_Arb,
                            الرقم = p.Actvty_No
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.ActivityTypes
                            where p.Actvty_No == id
                            select new
                            {
                                الإسم_بالإنجليزي = p.Name_Eng,
                                الإسم_بالعربي = p.Name_Arb,
                                الرقم = p.Actvty_No

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch
                {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insertactivities_types.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                try
                {
                    var query = from p in db.ActivityTypes
                                    // where p.Actvty_No == id
                                select new
                                {
                                    الرقم = p.Actvty_No,
                                    الإسم_بالعربي = p.Name_Arb,
                                    الإسم_بالإنجليزي = p.Name_Eng
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch
                {

                }
            }
            else
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.ActivityTypes
                            where p.Actvty_No == id
                            select new
                            {
                                الرقم = p.Actvty_No,
                                الإسم_بالعربي = p.Name_Arb,
                                الإسم_بالإنجليزي = p.Name_Eng

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("activity_typesReport.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int index = e.NewSelectedIndex;
            int id = Convert.ToInt32(GridView1.Rows[index].Cells[5].Text);
            ViewState["id"] = id;
            //ClientScript.RegisterStartupScript(GetType(), "Load", "confirm('Are you sure you want to delete?'); return false;", true);
            //int index = e.NewSelectedIndex;
            //int id =Convert.ToInt32( GridView1.Rows[index].Cells[5].Text);
            //var cn = db.ActivityTypes.Find(id);
            //db.ActivityTypes.Remove(cn);
            //db.SaveChanges();
            //Response.Redirect("activity_types.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["id"].ToString());
            if (id == 0)
            {

            }
            else
            {
                // delete selected row
                var cn = db.ActivityTypes.Find(id);
                db.ActivityTypes.Remove(cn);
                db.SaveChanges();
                Response.Redirect("activity_types.aspx");
                // load data to grid view
                var query = from p in db.ActivityTypes
                                // where p.Actvty_No == id
                            select new
                            {
                                الإسم_بالإنجليزي = p.Name_Eng,
                                الإسم_بالعربي = p.Name_Arb,
                                الرقم = p.Actvty_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }
    }
}