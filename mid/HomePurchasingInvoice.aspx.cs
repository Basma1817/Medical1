using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class HomePurchasingInvoice : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //// fill dropdownList with data
                DropDownList1.DataTextField = "Brn_NmAr";
                DropDownList1.DataValueField = "Brn_No";
                DropDownList1.DataSource = db.MainBranch.ToList();
                DropDownList1.DataBind();

                //// fill  gridview with data
                var query = from I in db.InvLodhdr join p in db.InvAstPymwys on I.Doc_Ty equals p.Pym_No
                                                   join s in db.MtsSuplir on I.Sup_No equals s.Sup_No
                            select new
                            {
                                الصافي = I.Net,
                                المورد = s.Sup_NmAr,
                               نوع_الفاتورة = p.Pym_Nmar,
                                التاريخ = I.Doc_Dt,
                                 الرقم = I.Doc_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int branch_id = int.Parse(DropDownList1.SelectedValue);
            //// fill  gridview with data
            var query = from I in db.InvLodhdr
                        join p in db.InvAstPymwys on I.Doc_Ty equals p.Pym_No
                        join s in db.MtsSuplir on I.Sup_No equals s.Sup_No
                        where I.StoreID== branch_id
                        select new
                        {
                            الصافي = I.Net,
                            المورد = s.Sup_NmAr,
                            نوع_الفاتورة = p.Pym_Nmar,
                            التاريخ = I.Doc_Dt,
                            الرقم = I.Doc_No
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchasingInovice.aspx");
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
          
                try
                {
                int branch_id = int.Parse(DropDownList1.SelectedValue);
                //// fill  gridview with data
                var query = from I in db.InvLodhdr
                            join p in db.InvAstPymwys on I.Doc_Ty equals p.Pym_No
                            join s in db.MtsSuplir on I.Sup_No equals s.Sup_No
                            where I.StoreID == branch_id
                            select new
                            {
                                الصافي = I.Net,
                                المورد = s.Sup_NmAr,
                                نوع_الفاتورة = p.Pym_Nmar,
                                التاريخ = I.Doc_Dt,
                                الرقم = I.Doc_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
                catch
                {

                }
           
        }
    }
}