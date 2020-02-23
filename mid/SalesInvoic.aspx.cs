using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class SalesInvoic : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //fill ddl pf company 
                ddl_company.DataValueField = "Cmp_No";
                ddl_company.DataTextField = "Cmp_Nm";
                ddl_company.DataSource = db.MainCmpnam.ToList();
                ddl_company.DataBind();
                //fill ddl of activity
                ddl_activity.DataValueField = "Actvty_No";
                ddl_activity.DataTextField = "Name_Arb";
                ddl_activity.DataSource = db.ActivityTypes.ToList();
                ddl_activity.DataBind();
                
                var query1 = (from p in db.InvLodhdr
                              join c in db.MtsCustmr
                              on p.Cstm_No equals c.Cstm_No
                              select new
                              {
                                  رقم_الفاتورة = p.Doc_No,
                                  تاريخ_الفاتورة = p.Doc_Dt,
                                  رقم_المرجع = p.Reftyp_No,
                                  اسم_العميل = c.Cstm_NmAr
                              });
                var query = db.InvLodhdr.Select(p => new {
                    رقم_الفاتورة =p.Doc_No,
                    تاريخ_الفاتورة  = p.Doc_Dt,
                    رقم_المرجع = p.Reftyp_No

                });
                GridView1.DataSource = query1.ToList();
                GridView1.DataBind();
            }

        }
        protected void ddl_activity_SelectedIndexChanged(object sender , EventArgs e)
        {

        }


        protected void btn_addpill_click(object sender, EventArgs e)
        {
            Response.Redirect("Sal_Inovic.aspx");

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

         
          
            GridView1.PageIndex = e.NewPageIndex;
            var query = db.InvLodhdr.Select(p => new {
                رقم_الفاتورة = p.Doc_No,
                تاريخ_الفاتورة = p.Doc_Dt,
                رقم_المرجع = p.Reftyp_No,
                
            });
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(GridView1.Rows[e.RowIndex].Cells[3].Text);
            InvLodhdr newDelete = db.InvLodhdr.Single(p => p.Doc_No == id);
            db.InvLodhdr.Remove(newDelete);
            db.SaveChanges();
            
        }
    }
}