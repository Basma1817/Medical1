using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace mid
{
    public partial class Pur_Invoice_All : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var query = (from H in db.InvLodhdr
                             join S in db.MtsSuplir
                             on H.Sup_No equals S.Sup_No
                             where
                             H.Doc_Ty ==2
                             select new
                             {
                                 إجمالي_التكلفة = H.FcTot_Cost,
                                 إجمالي_المشتريات =H.FcTot_Pur,                               
                                 تاريخ_الفاتورة = H.Doc_Dt,
                                 اسم_المورد = S.Sup_NmAr,
                                 رقم_الفاتورة = H.Doc_No
                             });                
                GV_Pur_All.DataSource = query.ToList();
                GV_Pur_All.DataBind();
                //DDL_Com_NO.DataValueField = "Cmp_No";
                //DDL_Com_NO.DataTextField = "Cmp_Nm";
                //DDL_Com_NO.DataSource = db.MainCmpnams.ToList();
                //DDL_Com_NO.DataBind();
                //Txt_Comp_No.Text = DDL_Com_NO.SelectedValue;

                //var query = from A in db.InvLodhdrs
                //            select new
                //            {
                //                رقم_الفاتورة = A.Doc_No,
                //                تاريخ_الفاتورة = A.Doc_Dt
                //            };
                //Gv_Inv_Pur.DataSource = query.ToList();
                //Gv_Inv_Pur.DataBind();
                //Hf_Date.Value = DateTime.Now.ToString("dd/MM/yyyy");
            }
        }

        protected void DDL_Com_NO_SelectedIndexChanged(object sender, EventArgs e)
        {                      
            Txt_Comp_No.Text = DDL_Com_NO.SelectedValue;            
        }

        protected void DDL_Actinvity_NO_SelectedIndexChanged(object sender, EventArgs e)
        {
            Txt_Activity_No.Text = DDL_Actinvity_NO.SelectedValue;
        }

      
        protected void Btn_Searsh_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_Add_Inv_Click(object sender, EventArgs e)
        {
            var NID = db.InvLodhdr.Where(o => o.Doc_Ty == 2).Max(q => q.Doc_No);
            Int64 NewID = Convert.ToInt64(NID) + 1;
            SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ICDBTrdAEntities_A"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into InvLodhdr (Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No) values (0,0,0,2,@Doc_No)", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", NewID);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            SqlCommand cmd2 = new SqlCommand("insert into InvLoddtl (Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No) values (0,0,0,2,@Doc_No,1)", cn);
            cmd2.CommandType = CommandType.Text;
            cmd2.Parameters.AddWithValue("@Doc_No", NewID);
            cn.Open();
            cmd2.ExecuteNonQuery();
            cn.Close();
            My_Vairables.Pur_UID = NewID.ToString();
            Response.Redirect("~/Pur_Invoice_Insert.aspx");
        }
    }
}