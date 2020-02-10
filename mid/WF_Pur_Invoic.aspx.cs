using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace min.Forms.Pur
{
    
    public partial class WF_Pur_Invoic : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ICDBTrdAEntities_A"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DDL_Com_NO.Focus();
                InvLodhdr_New_ID();
                Txt_Doc_No.Text = Hf_InvLodhdr.Value;
                SqlCommand cmd = new SqlCommand("InvLodhdr_Insert", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_No", Txt_Doc_No.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }

        protected void DDL_Sup_No_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DDL_Sup_No.SelectedValue!="0")
                {
                    SqlCommand cmd = new SqlCommand("MtsSuplir_get_Credit_Days", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Sup_No", DDL_Sup_No.SelectedValue);
                    cn.Open();
                    Txt_Credit_Days.Text = cmd.ExecuteScalar().ToString();
                    cn.Close();
                }
                if (Txt_Doc_Dt.Text != "" && Txt_Credit_Days.Text!="")
                {
                    int Dat = Convert.ToInt16(Txt_Credit_Days.Text);
                    DateTime D_Dpy = Convert.ToDateTime(Txt_Doc_Dt.Text);
                    Txt_Pym_Dt.Text = (D_Dpy.AddDays(Dat)).ToString("dd/MM/yyyy");
                }
                else
                {
                    Response.Write("<script>alert('أدخل تاريخ الفاتورة أولاً')</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }
  
        }


        protected void DDL_Store_Number_SelectedIndexChanged(object sender, EventArgs e)
        {

           
        }
        //الحصول على كود جديد للفاتورة
        private void InvLodhdr_New_ID()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("InvLodhdr_Count_ID", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                Hf_InvLodhdr.Value = cmd.ExecuteScalar().ToString();
                cn.Close();
                Int64 NewID = Convert.ToInt64(Hf_InvLodhdr.Value);
                if (NewID > 1)
                {
                    SqlCommand cmd1 = new SqlCommand("InvLodhdr_Max_ID", cn);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cn.Open();
                    Hf_InvLodhdr.Value = cmd1.ExecuteScalar().ToString();
                    cn.Close();
                }
            }
            catch 
            {

                
            }
        }

        protected void Btn_Add_New_Click(object sender, EventArgs e)
        {
            //try
            //{    
            if (Txt_Doc_No.Text == "")
            {
                InvLodhdr_New_ID();
                Txt_Doc_No.Text = Hf_InvLodhdr.Value;
                SqlCommand cmd = new SqlCommand("InvLodhdr_Insert", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_No", Txt_Doc_No.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }


            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }

        private void InvLodhdr_Update()
        {
            //try
            //{
            if(Txt_ExchangeRate.Text=="")
            {
                Txt_ExchangeRate.Text = "0";
            }
                if (Txt_Doc_No.Text != "")
                {
                SqlCommand cmd = new SqlCommand("InvLodhdr_Update", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
                cmd.Parameters.AddWithValue("@Doc_Dt", Txt_Doc_Dt.Text);
                cmd.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
                cmd.Parameters.AddWithValue("@Pym_No", int.Parse(DDL_Pym_No.SelectedValue));
                cmd.Parameters.AddWithValue("@Curncy_No", int.Parse(DDL_Curncy_No.SelectedValue));
                cmd.Parameters.AddWithValue("@ExchangeRate", Convert.ToDecimal(Txt_ExchangeRate.Text));
                cmd.Parameters.AddWithValue("@Sup_No", Convert.ToInt64(DDL_Sup_No.SelectedValue));
                cmd.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
                cmd.Parameters.AddWithValue("@Sup_VchrNo", Txt_Sup_VchrNo.Text);
                cmd.Parameters.AddWithValue("@Sup_Inv", Txt_Sup_Inv.Text);
                cmd.Parameters.AddWithValue("@RcvngPur_Dt", Txt_RcvngPur_Dt.Text);
                cmd.Parameters.AddWithValue("@Credit_Days", Convert.ToInt16(Txt_Credit_Days.Text));
                cmd.Parameters.AddWithValue("@Pym_Dt", Txt_Pym_Dt.Text);
                cmd.Parameters.AddWithValue("@Notes", Txt_Notes.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            //try
            //{
                InvLodhdr_Update();
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }

        //الحصول على رقم السطرLn_No في جدول تفاصيل الفاتورة InvLoddtl
        private void New_Ln_No()
        {

            try
            {
                SqlCommand cmd = new SqlCommand("InvLoddtl_Count_New_Ln_No", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_Ty",Convert.ToInt16(DDL_Reftyp_No.SelectedValue));
                cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                cn.Open();
                Hf_Ln_No.Value = cmd.ExecuteScalar().ToString();
                cn.Close();
                Int64 NewID = Convert.ToInt64(Hf_Ln_No.Value);
                if (NewID > 1)
                {
                    SqlCommand cmd1 = new SqlCommand("InvLoddtl_Max_New_Ln_No", cn);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@Doc_Ty", Convert.ToInt16(DDL_Reftyp_No.SelectedValue));
                    cmd1.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                    cn.Open();
                    Hf_Ln_No.Value = cmd1.ExecuteScalar().ToString();
                    cn.Close();
                }
        }
            catch (Exception)
            {

                throw;
            }
        }
        //زر الإضافة في جدول التفاصيل
        protected void Btn_Add_Details_Click(object sender, EventArgs e)
        {
            if(Txt_Disc1_Prct.Text=="")
            {
                Txt_Disc1_Prct.Text = "0";
            }
            if (Txt_Disc2_Prct.Text == "")
            {
                Txt_Disc2_Prct.Text = "0";
            }
            //رقم السطر
            New_Ln_No();
            //الاضافة
            SqlCommand cmd = new SqlCommand("InvLoddtl_Insert_Pur", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
            cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
            cmd.Parameters.AddWithValue("@Ln_No", int.Parse(Hf_Ln_No.Value));
            cmd.Parameters.AddWithValue("@Doc_Dt", Txt_Doc_Dt.Text);
            cmd.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
            cmd.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
            cmd.Parameters.AddWithValue("@Sup_No", Convert.ToInt64(DDL_Sup_No.SelectedValue));
            cmd.Parameters.AddWithValue("@Itm_No", Convert.ToInt64(Txt_Itm_No.Text));
            cmd.Parameters.AddWithValue("@Unit_No",int.Parse(DDL_Itm_Unit.SelectedValue));
            cmd.Parameters.AddWithValue("@Qty",Convert.ToDecimal(Txt_Qty.Text));
            cmd.Parameters.AddWithValue("@Itm_Pur",Convert.ToDecimal(Txt_Itm_Pur.Text));
            cmd.Parameters.AddWithValue("@Titm_Pur",Convert.ToDecimal(Txt_Titm_Pur.Text));
            cmd.Parameters.AddWithValue("@Disc1_Prct",Convert.ToDecimal(Txt_Disc1_Prct.Text));
            cmd.Parameters.AddWithValue("@Disc2_Prct",Convert.ToDecimal(Txt_Disc2_Prct.Text));


            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        }

        protected void DDL_Itm_NmAr_SelectedIndexChanged(object sender, EventArgs e)
        {
            SQL_DDL_Itm_Unit.DataBind();
            Txt_Itm_No.Text = DDL_Itm_NmAr.SelectedValue;
        }

        private void Gett_Titm_Pur()
        {
            if (Txt_Qty.Text!="" && Txt_Itm_Pur.Text!="")
            {
                Decimal Qty = Convert.ToDecimal(Txt_Qty.Text);
                Decimal Itm_Pur = Convert.ToDecimal(Txt_Itm_Pur.Text);
                Decimal Total = Qty * Itm_Pur;
                Txt_Titm_Pur.Text = Total.ToString();
            }
            else if(Txt_Itm_Pur.Text=="")
                    {
                Response.Write("<script>alert('أدخل سعر الوحدة')</script>");
            }
            else if (Txt_Qty.Text=="")
            {
                Response.Write("<script>alert('أدخل الكمية')</script>");
            }
        }

        protected void Txt_Qty_TextChanged(object sender, EventArgs e)
        {
            Gett_Titm_Pur();
        }

        protected void Txt_Itm_pur_TextChanged(object sender, EventArgs e)
        {
            Gett_Titm_Pur();
        }

        protected void DDL_Itm_Unit_OnSelectedIndexChanged(object sender, EventArgs e)
        {

            Gett_Titm_Pur();
        }
        protected void Txt_Itm_No_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //Int64 ID = Convert.ToInt64(Txt_Itm_No.Text);
                DDL_Itm_NmAr.SelectedValue =Txt_Itm_No.Text;
                Txt_Qty.Focus();
            }
            catch 
            {
                Txt_Itm_No.Text = "";
                Txt_Itm_No.Focus();
            }
        }

        private void InvLoddtl_Gett_by_Ln_No()
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("InvLoddtl_Gett_by_Ln_No", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
                cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                cmd.Parameters.AddWithValue("@Ln_No", Convert.ToInt32(Hf_Ln_No.Value));
                SqlDataAdapter Da = new SqlDataAdapter(cmd);
                DataSet Ds = new DataSet();
                Da.Fill(Ds, "InvLoddtl");
                Hf_Ln_No.Value = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                DDL_Reftyp_No.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Doc_Ty"].ToString();
                Txt_Itm_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                DDL_Itm_NmAr.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                Txt_Qty.Text = Ds.Tables["InvLoddtl"].Rows[0]["Qty"].ToString();
                Txt_Itm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_Pur"].ToString();
                Txt_Titm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Titm_Pur"].ToString();
                Txt_Disc1_Prct.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc1_Prct"].ToString();
                Txt_Disc2_Prct.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc2_Prct"].ToString();
                cn.Close();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void InvLoddtl_Update_Pur()
        {
            //try
            //{
                cn.Open();
                SqlCommand cmd = new SqlCommand("InvLoddtl_Update_Pur", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
                cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                cmd.Parameters.AddWithValue("@Ln_No", Convert.ToInt64(Hf_Ln_No.Value));
                cmd.Parameters.AddWithValue("@Itm_No", Convert.ToInt64(Txt_Itm_No.Text));
                cmd.Parameters.AddWithValue("@Unit_No", Convert.ToInt64(DDL_Itm_Unit.SelectedValue));
                cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(Txt_Qty.Text));
                cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(Txt_Itm_Pur.Text));
                cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(Txt_Titm_Pur.Text));
                cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(Txt_Disc1_Prct.Text));
                cmd.Parameters.AddWithValue("@Disc2_Prct", Convert.ToDecimal(Txt_Disc2_Prct.Text));                
                cmd.ExecuteNonQuery();
                cn.Close();
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }

        protected void Btn_Update_Details_Click(object sender, EventArgs e)
        {
            InvLoddtl_Update_Pur();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                //الحصول على رقم السطر من GView
                Int64 X = Convert.ToInt64(e.CommandArgument);
                Hf_Ln_No.Value = X.ToString();
                //جلب البيانات من الجدول
                //وعرض البيانات في الحقول للتعديل فيها 
                InvLoddtl_Gett_by_Ln_No();
            }
            catch
            {

            }


        }
    }
       

    }
