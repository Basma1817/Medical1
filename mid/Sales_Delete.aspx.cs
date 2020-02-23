using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class Sales_Delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //fill ddl of activity 
                ddl_activiy.DataValueField = "Actvty_No";
                ddl_activiy.DataTextField = "Name_Arb";
                ddl_activiy.DataSource = db.ActivityTypes.ToList();
                ddl_activiy.DataBind();
                //fill ddl of company
                ddl_comp.DataValueField = "Cmp_No";
                ddl_comp.DataTextField = "Cmp_Nm";
                ddl_comp.DataSource = db.MainCmpnam.ToList();
                ddl_comp.DataBind();
                //query string for doc_no
                //var id = int.Parse(Request.QueryString["Doc_No"]);
                // var Doc = db.InvLodhdr.Find(id);
                // txt_dateAR.Text = Doc.Doc_DtAr;
                // txt_dateEN.Text = Doc.Doc_Dt;
                // txt_credit_days.Text = Doc.Credit_Days.ToString();
                // txt_credit_date.Text = Doc.Pym_Dt;
                // txt_document.Text = Doc.Doc_No.ToString();
            }
        }


        protected void btn_cancel_Click(object sender , EventArgs e)
        {
            Response.Redirect("SalesInvoic.aspx");
        }
        }
    }
