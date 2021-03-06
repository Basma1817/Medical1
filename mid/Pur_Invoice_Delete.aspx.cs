﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;

namespace mid
{
    public partial class Pur_Invoice_Delete : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();       
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ICDBTrdAEntities_A"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DDL_Com_NO.Focus();
                var NID = db.InvLodhdr.Where(o => o.Doc_Ty == 2).Max(q => q.Doc_No);
                Int64 NewID = Convert.ToInt64(NID) + 1;
                Txt_Doc_No.Text = NewID.ToString();

                //SqlCommand cmd = new SqlCommand("InvLodhdr_Insert", cn);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@Doc_No", Txt_Doc_No.Text);
                //cn.Open();
                //cmd.ExecuteNonQuery();
                //cn.Close();
                //Inv_Details_Insert();
                //Lbl_B_ID.Text = Txt_Doc_No.Text;
                Txt_Doc_Dt.Text = DateTime.Now.ToString("dd/MM/yyyy");
                CultureInfo X = new CultureInfo("ar_SA");
                string m = Convert.ToDateTime(Txt_Doc_Dt.Text).ToString("dd/MM/yyyy", X);
                Txt_Doc_DtAr.Text = m;
            }
        }

        private void Inv_Details_Insert()
        {
            SqlCommand cmd = new SqlCommand("insert into InvLoddtl (Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No) values (0,0,0,2,@Doc_No,1)", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", Txt_Doc_No.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        protected void DDL_Actinvity_NO_SelectedIndexChanged(object sender, EventArgs e)
        {
            Txt_Activity_No.Text = DDL_Actinvity_NO.SelectedValue;
            DDL_Sup_No.Focus();
        }
        protected void DDL_Com_NO_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            Txt_Comp_No.Text = DDL_Com_NO.SelectedValue;
            DDL_Actinvity_NO.Focus();
        }

        protected void Txt_Doc_Dt_OnTextChanged(object sender, EventArgs e)
        {
            CultureInfo X = new CultureInfo("ar_SA");
            string m = Convert.ToDateTime(Txt_Doc_Dt.Text).ToString("dd/MM/yyyy", X);
            Txt_Doc_DtAr.Text = m;
        }

        protected void DDL_Sup_No_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Txt_Sup_No.Text = DDL_Sup_No.SelectedValue;
                if (DDL_Sup_No.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("MtsSuplir_get_Credit_Days", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Sup_No", DDL_Sup_No.SelectedValue);
                    cn.Open();
                    Txt_Credit_Days.Text = cmd.ExecuteScalar().ToString();
                    cn.Close();
                }
                if (Txt_Doc_Dt.Text != "" && Txt_Credit_Days.Text != "")
                {
                    int Dat = Convert.ToInt16(Txt_Credit_Days.Text);
                    DateTime D_Dpy = Convert.ToDateTime(Txt_Doc_Dt.Text);
                    Txt_Pym_Dt.Text = (D_Dpy.AddDays(Dat)).ToString("dd/MM/yyyy");
                    Txt_Sup_Inv.Focus();
                }
                else
                {
                    Txt_Credit_Days.Text = "";
                    Txt_Pym_Dt.Text = "";
                    //Response.Write("<script>alert('أدخل تاريخ الفاتورة أولاً')</script>");
                    Txt_Doc_Dt.Focus();
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

        //protected void Btn_Add_New_Click(object sender, EventArgs e)
        //{
        //    //try
        //    //{    
        //    if (Txt_Doc_No.Text == "")
        //    {
        //        InvLodhdr_New_ID();
        //        Txt_Doc_No.Text = Hf_InvLodhdr.Value;
        //        SqlCommand cmd = new SqlCommand("InvLodhdr_Insert", cn);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Doc_No", Txt_Doc_No.Text);
        //        cn.Open();
        //        cmd.ExecuteNonQuery();
        //        cn.Close();
        //    }


        //    //}
        //    //catch (Exception)
        //    //{

        //    //    throw;
        //    //}
        //}

        private void InvLodhdr_Update()
        {
            if (DDL_Com_NO.SelectedValue != "0" && DDL_Actinvity_NO.SelectedValue != "0" && DDL_Store_Number.SelectedValue != "0" && Txt_Doc_No.Text != "" && Txt_Doc_Dt.Text != "" && DDL_Curncy_No.SelectedValue != "0" && DDL_Pym_No.SelectedValue != "0" && DDL_To_Store.SelectedValue != "0" && DDL_Sup_No.SelectedValue != "0" && DDL_Reftyp_No.SelectedValue != "0")
            {
                if (Txt_ExchangeRate.Text == "")
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

            }
            else
            {
            }


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
                cmd.Parameters.AddWithValue("@Doc_Ty", 2);
                cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                cn.Open();
                Hf_Ln_No.Value = cmd.ExecuteScalar().ToString();
                cn.Close();
                Int64 NewID = Convert.ToInt64(Hf_Ln_No.Value);
                if (NewID > 1)
                {
                    SqlCommand cmd1 = new SqlCommand("InvLoddtl_Max_New_Ln_No", cn);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@Doc_Ty", 2);
                    cmd1.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
                    cn.Open();
                    Hf_Ln_No.Value = cmd1.ExecuteScalar().ToString();
                    cn.Close();
                }
            }
            catch (Exception)
            {


            }
        }
        //زر الإضافة في جدول التفاصيل
        protected void Btn_Add_Details_Click(object sender, EventArgs e)
        {
            if (Txt_Disc1_Prct.Text == "")
            {
                Txt_Disc1_Prct.Text = "0";
            }






            //رقم السطر
            New_Ln_No();
            //الاضافة
            SqlCommand cmd = new SqlCommand("INSERT INTO [InvLoddtl] ([Cmp_No], [Actvty_No], [StoreID], [Doc_Ty], [Doc_No], [Ln_No], [Doc_Dt], [Doc_DtAr], [Reftyp_No], [Pym_No], [To_Store], [Unit_No], [Qty], [Exp_Date], [Itm_Pur], [Titm_Pur], [Itm_Sal], [Titm_Sal], [Disc1_Prct], [Disc1_Val], [FcItm_Pur], [FcTitm_Pur], [Batch_No], [Taxp_Extra], [Taxv_Extra], [Sup_No], [Loc_No], [Itm_No]) VALUES (@Cmp_No, @Actvty_No, @StoreID, @Doc_Ty, @Doc_No, @Ln_No, @Doc_Dt, @Doc_DtAr, @Reftyp_No, @Pym_No, @To_Store, @Unit_No, @Qty, @Exp_Date, @Itm_Pur, @Titm_Pur, @Itm_Sal, @Titm_Sal, @Disc1_Prct, @Disc1_Val, @FcItm_Pur, @FcTitm_Pur, @Batch_No, @Taxp_Extra, @Taxv_Extra, @Sup_No, @Loc_No, @Itm_No)", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
            cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
            cmd.Parameters.AddWithValue("@Ln_No", int.Parse(Hf_Ln_No.Value));
            cmd.Parameters.AddWithValue("@Doc_Dt", Txt_Doc_Dt.Text);
            cmd.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
            cmd.Parameters.AddWithValue("@Reftyp_No", int.Parse(DDL_Reftyp_No.SelectedValue));
            cmd.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
            cmd.Parameters.AddWithValue("@Sup_No", Convert.ToInt64(DDL_Sup_No.SelectedValue));
            cmd.Parameters.AddWithValue("@Itm_No", Convert.ToInt64(Txt_Itm_No.Text));
            cmd.Parameters.AddWithValue("@Unit_No", int.Parse(DDL_Itm_Unit.SelectedValue));
            cmd.Parameters.AddWithValue("@Loc_No", int.Parse(Txt_Loc_No.Text));
            cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(Txt_Qty.Text));
            cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(Txt_Itm_Pur.Text));
            cmd.Parameters.AddWithValue("@Exp_Date", Txt_Exp_Date.Text);
            cmd.Parameters.AddWithValue("@Batch_No", Txt_Batch_No.Text);
            cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(Txt_Titm_Pur.Text));
            cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(Txt_Disc1_Prct.Text));
            cmd.Parameters.AddWithValue("@Disc1_Val", Convert.ToDecimal(Txt_Disc1_Val.Text));
            cmd.Parameters.AddWithValue("@Itm_Sal", Convert.ToDecimal(Txt_Item_Sal.Text));
            cmd.Parameters.AddWithValue("@TItm_Sal", Convert.ToDecimal(Txt_TItem_Sal.Text));
            cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(Txt_FcItm_Pur.Text));
            cmd.Parameters.AddWithValue("@FcTitm_Pur", Convert.ToDecimal(Txt_FcTitm_Pur.Text));
            cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(Txt_Taxp_Extra.Text));
            cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(Txt_Taxv_Extra.Text));
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            GVInv_Details.DataBind();
        }

        protected void DDL_Itm_NmAr_SelectedIndexChanged(object sender, EventArgs e)
        {
            SQL_DDL_Itm_Unit.DataBind();
            Txt_Itm_No.Text = DDL_Itm_NmAr.SelectedValue;
        }

        private void Gett_Titm_Pur()
        {
            if (Txt_Qty.Text != "" && Txt_Itm_Pur.Text != "")
            {
                Decimal Qty = Convert.ToDecimal(Txt_Qty.Text);
                Decimal Itm_Pur = Convert.ToDecimal(Txt_Itm_Pur.Text);
                Decimal Total = Qty * Itm_Pur;
                Txt_Titm_Pur.Text = Total.ToString();
            }
            else if (Txt_Itm_Pur.Text == "")
            {
                Response.Write("<script>alert('أدخل سعر الوحدة')</script>");
            }
            else if (Txt_Qty.Text == "")
            {
                Response.Write("<script>alert('أدخل الكمية')</script>");
            }
        }

        protected void Txt_Qty_TextChanged(object sender, EventArgs e)
        {
            Gett_Titm_Pur();
            Txt_Loc_No.Focus();
        }

        protected void Txt_Itm_pur_TextChanged(object sender, EventArgs e)
        {
            Gett_Titm_Pur();
            Txt_Exp_Date.Focus();
        }

        protected void DDL_Itm_Unit_OnSelectedIndexChanged(object sender, EventArgs e)
        {

            Gett_Titm_Pur();
            Txt_Qty.Focus();
        }
        protected void Txt_Itm_No_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //Int64 ID = Convert.ToInt64(Txt_Itm_No.Text);
                DDL_Itm_NmAr.SelectedValue = Txt_Itm_No.Text;
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
                cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
                cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
                SqlDataAdapter Da = new SqlDataAdapter(cmd);
                DataSet Ds = new DataSet();
                Da.Fill(Ds, "InvLoddtl");
                Hf_Ln_No.Value = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                Txt_Itm_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                DDL_Itm_NmAr.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                DDL_Itm_Unit.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Unit_No"].ToString();
                Txt_Loc_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Loc_No"].ToString();
                Txt_Qty.Text = Ds.Tables["InvLoddtl"].Rows[0]["Qty"].ToString();
                Txt_Itm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_Pur"].ToString();
                Txt_Titm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Titm_Pur"].ToString();
                Txt_Exp_Date.Text = Ds.Tables["InvLoddtl"].Rows[0]["Exp_Date"].ToString();
                Txt_Batch_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Batch_No"].ToString();
                Txt_Disc1_Prct.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc1_Prct"].ToString();
                Txt_Disc1_Val.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc1_Val"].ToString();
                Txt_Item_Sal.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_SalSubUnt"].ToString();
                Txt_TItem_Sal.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcTitm_Sal"].ToString();
                Txt_FcItm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcItm_Pur"].ToString();
                Txt_FcTitm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcTitm_Cost"].ToString();
                Txt_Taxp_Extra.Text = Ds.Tables["InvLoddtl"].Rows[0]["Taxp_Extra"].ToString();
                Txt_Taxv_Extra.Text = Ds.Tables["InvLoddtl"].Rows[0]["Taxv_Extra"].ToString();
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
            SqlCommand cmd = new SqlCommand("UPDATE [InvLoddtl] SET [Doc_Dt] = @Doc_Dt, [Doc_DtAr] = @Doc_DtAr, [Reftyp_No] = @Reftyp_No, [Pym_No] = @Pym_No, [To_Store] = @To_Store, [Unit_No] = @Unit_No, [Qty] = @Qty, [Exp_Date] = @Exp_Date, [Itm_Pur] = @Itm_Pur, [Titm_Pur] = @Titm_Pur, [Itm_Sal] = @Itm_Sal, [Titm_Sal] = @Titm_Sal, [Disc1_Prct] = @Disc1_Prct, [Disc1_Val] = @Disc1_Val, [FcItm_Pur] = @FcItm_Pur, [FcTitm_Pur] = @FcTitm_Pur, [Batch_No] = @Batch_No, [Taxp_Extra] = @Taxp_Extra, [Taxv_Extra] = @Taxv_Extra, [Sup_No] = @Sup_No, [Loc_No] = @Loc_No, [Itm_No] = @Itm_No WHERE [Cmp_No] = @Cmp_No AND [Actvty_No] = @Actvty_No AND [StoreID] = @StoreID AND [Doc_Ty] = @Doc_Ty AND [Doc_No] = @Doc_No AND [Ln_No] = @Ln_No", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", int.Parse(Txt_Doc_No.Text));
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
            cmd.Parameters.AddWithValue("@Unit_No", int.Parse(DDL_Itm_Unit.SelectedValue));
            cmd.Parameters.AddWithValue("@Loc_No", int.Parse(Txt_Loc_No.Text));
            cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(Txt_Qty.Text));
            cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(Txt_Itm_Pur.Text));
            cmd.Parameters.AddWithValue("@Exp_Date", Txt_Exp_Date.Text);
            cmd.Parameters.AddWithValue("@Batch_No", Txt_Batch_No.Text);
            cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(Txt_Titm_Pur.Text));
            cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(Txt_Disc1_Prct.Text));
            cmd.Parameters.AddWithValue("@Disc1_Val", Convert.ToDecimal(Txt_Disc1_Val.Text));
            cmd.Parameters.AddWithValue("@Itm_SalSubUnt", Convert.ToDecimal(Txt_Item_Sal.Text));
            cmd.Parameters.AddWithValue("@FcTitm_Sal", Convert.ToDecimal(Txt_TItem_Sal.Text));
            cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(Txt_FcItm_Pur.Text));
            cmd.Parameters.AddWithValue("@FcTitm_Pur", Convert.ToDecimal(Txt_FcTitm_Pur.Text));
            cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(Txt_Taxp_Extra.Text));
            cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(Txt_Taxv_Extra.Text));
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

        protected void Txt_Sup_No_TextChanged(object sender, EventArgs e)
        {
            try
            {
                DDL_Sup_No.SelectedValue = Txt_Sup_No.Text;
            }
            catch
            {
                DDL_Sup_No.SelectedValue = "0";
                Txt_Sup_No.Text = "";
            }
        }

        protected void DDL_Pym_No_SelectedIndexChanged(object sender, EventArgs e)
        {
            int X = int.Parse(DDL_Pym_No.SelectedValue);
            if (X == 5)
            {
                Panel_Py.Visible = true;
            }
            else
            {
                Panel_Py.Visible = false;
            }
        }

        protected void GV_ItmName_SelectedIndexChanged(object sender, EventArgs e)
        {
            ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue;

            ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_Itm_Unit")).DataBind();
        }

        protected void GV_Itm_No_TextChanged(object sender, EventArgs e)
        {
            try
            {
                ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text;
            }
            catch
            {
                ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text = "";
                ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue = "0";


            }

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            New_Ln_No();
            SQL_GVInv_Details.InsertParameters["Cmp_No"].DefaultValue = "0";
            SQL_GVInv_Details.InsertParameters["Actvty_No"].DefaultValue = "0";
            SQL_GVInv_Details.InsertParameters["StoreID"].DefaultValue = "0";
            SQL_GVInv_Details.InsertParameters["Doc_Ty"].DefaultValue = "2";
            SQL_GVInv_Details.InsertParameters["Doc_No"].DefaultValue = Txt_Doc_No.Text;
            SQL_GVInv_Details.InsertParameters["Ln_No"].DefaultValue = Hf_Ln_No.Value;
            SQL_GVInv_Details.InsertParameters["Doc_Dt"].DefaultValue = Txt_Doc_Dt.Text;
            SQL_GVInv_Details.InsertParameters["Doc_DtAr"].DefaultValue = Txt_Doc_DtAr.Text;
            SQL_GVInv_Details.InsertParameters["Reftyp_No"].DefaultValue = DDL_Reftyp_No.SelectedValue;
            SQL_GVInv_Details.InsertParameters["Pym_No"].DefaultValue = DDL_Pym_No.SelectedValue;
            SQL_GVInv_Details.InsertParameters["To_Store"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_To_Store")).SelectedValue;
            SQL_GVInv_Details.InsertParameters["Unit_No"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_Itm_Unit")).SelectedValue;
            SQL_GVInv_Details.InsertParameters["Qty"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Qty")).Text;
            SQL_GVInv_Details.InsertParameters["Exp_Date"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Exp_Date")).Text;
            SQL_GVInv_Details.InsertParameters["Itm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_Pur")).Text;
            SQL_GVInv_Details.InsertParameters["Titm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_TItm_Pur")).Text;
            SQL_GVInv_Details.InsertParameters["Itm_Sal"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_ItmSal")).Text;
            SQL_GVInv_Details.InsertParameters["Titm_Sal"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_TitmSal")).Text;
            SQL_GVInv_Details.InsertParameters["Disc1_Prct"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV__Disc1_Prct")).Text;
            SQL_GVInv_Details.InsertParameters["Disc1_Val"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Disc1_Val")).Text;
            SQL_GVInv_Details.InsertParameters["FcItm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_FcItm_Pur")).Text;
            SQL_GVInv_Details.InsertParameters["FcTitm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_FcTitm_Pur")).Text;
            SQL_GVInv_Details.InsertParameters["Batch_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Batch_No")).Text;
            SQL_GVInv_Details.InsertParameters["Taxp_Extra"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Taxp_Extra")).Text;
            SQL_GVInv_Details.InsertParameters["Taxv_Extra"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Taxv_Extra")).Text;
            SQL_GVInv_Details.InsertParameters["Sup_No"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("DDL_Sup_No")).SelectedValue;
            SQL_GVInv_Details.InsertParameters["Loc_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Loc_No")).Text;
            SQL_GVInv_Details.InsertParameters["Itm_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text;
            SQL_GVInv_Details.Insert();
            GVInv_Details.DataBind();

            //SqlCommand cmd = new SqlCommand("InvLoddtl_Insert_Pur", cn);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
            //cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            //cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            //cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            //cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
            //cmd.Parameters.AddWithValue("@Ln_No", int.Parse(Hf_Ln_No.Value));
            //cmd.Parameters.AddWithValue("@Doc_Dt", Txt_Doc_Dt.Text);
            //cmd.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
            //cmd.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
            //cmd.Parameters.AddWithValue("@Sup_No", Convert.ToInt64(DDL_Sup_No.SelectedValue));
            //cmd.Parameters.AddWithValue("@Itm_No", Convert.ToInt64(Txt_Itm_No.Text));
            //cmd.Parameters.AddWithValue("@Unit_No", int.Parse(DDL_Itm_Unit.SelectedValue));
            //cmd.Parameters.AddWithValue("@Loc_No", int.Parse(Txt_Loc_No.Text));
            //cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(Txt_Qty.Text));
            //cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(Txt_Itm_Pur.Text));
            //cmd.Parameters.AddWithValue("@Exp_Date", Txt_Exp_Date.Text);
            //cmd.Parameters.AddWithValue("@Batch_No", Txt_Batch_No.Text);
            //cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(Txt_Titm_Pur.Text));
            //cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(Txt_Disc1_Prct.Text));
            //cmd.Parameters.AddWithValue("@Disc1_Val", Convert.ToDecimal(Txt_Disc1_Val.Text));
            //cmd.Parameters.AddWithValue("@Itm_SalSubUnt", Convert.ToDecimal(Txt_Item_SalSubUnit.Text));
            //cmd.Parameters.AddWithValue("@FcTitm_Sal", Convert.ToDecimal(Txt_FcTitm_Sal.Text));
            //cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(Txt_FcItm_Pur.Text));
            //cmd.Parameters.AddWithValue("@FcTitm_Cost", Convert.ToDecimal(Txt_FcTitm_Cost.Text));
            //cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(Txt_Taxp_Extra.Text));
            //cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(Txt_Taxv_Extra.Text));
            //cn.Open();
            //cmd.ExecuteNonQuery();
            //cn.Close();
        }

        protected void Btn_Delete_Click(object sender, EventArgs e)
        {
            short Comp_No = short.Parse(DDL_Com_NO.SelectedValue);
            short Activ_No = short.Parse(DDL_Actinvity_NO.SelectedValue);
            short Store_No = short.Parse(DDL_Store_Number.SelectedValue);
            Int64 Doc_No = Int64.Parse(Txt_Doc_No.Text);

            InvLodhdr Header = new InvLodhdr()
            {
                Cmp_No = Comp_No,
                Actvty_No = Activ_No,
                StoreID=Store_No,
                Doc_No= Doc_No,
                Doc_Ty=2
            };
            db.InvLodhdr.Remove(Header);
            db.SaveChanges();
        }
    }
}