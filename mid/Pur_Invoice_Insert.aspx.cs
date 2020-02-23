using System;
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
    public partial class Pur_Invoice_Insert : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ICDBTrdAEntities_A"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
                var query = (from D in db.InvLoddtl
                             join I in db.MtsItmMfs
                             on D.Itm_No equals I.Itm_No                          
                             select new
                             {
                                م=D.Ln_No,
                                رقم_الصنف=D.Itm_No,
                                اسم_الصنف=I.Itm_NmAr
                             });
                DDL_Com_NO.Focus();
                //var NID = db.InvLodhdr.Where(o => o.Doc_Ty == 2).Max(q=>q.Doc_No);
                //Int64 NewID = Convert.ToInt64(NID) + 1;
                //Txt_Doc_No.Text = NewID.ToString();
                Txt_Doc_No.Text = My_Vairables.Pur_UID;
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
            InvLodhdr_Update();
        }
        protected void DDL_Com_NO_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            Txt_Comp_No.Text = DDL_Com_NO.SelectedValue;
            DDL_Actinvity_NO.Focus();
            InvLodhdr_Update();
        }

        protected void Txt_Doc_Dt_OnTextChanged(object sender, EventArgs e)
        {
            CultureInfo X = new CultureInfo("ar_SA");
            string m = Convert.ToDateTime(Txt_Doc_Dt.Text).ToString("dd/MM/yyyy", X);
            Txt_Doc_DtAr.Text = m;
            InvLodhdr_Update();
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
                InvLodhdr_Update();
            }
            catch (Exception)
            {

                throw;
            }

        }


        protected void DDL_Store_Number_SelectedIndexChanged(object sender, EventArgs e)
        {
            InvLodhdr_Update();

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
                    Lbl_Msg.Text = "تمت التعديل بنجاح";
                }

            }
            else
            {
            }


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
                int NewID = int.Parse(Hf_Ln_No.Value);
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
            //if (Txt_Disc1_Prct.Text == "")
            //{
            //    Txt_Disc1_Prct.Text = "0";
            //}
            ////رقم السطر
            //New_Ln_No();
            ////الاضافة
            //short Cmpany_No = short.Parse(DDL_Com_NO.SelectedValue);
            //short Activity_No = short.Parse(DDL_Actinvity_NO.SelectedValue);
            //short store_ID = short.Parse(DDL_Store_Number.SelectedValue);
            //Int64 Doc_Number = Int64.Parse(Txt_Doc_No.Text);
            ////var query = db.InvLoddtl.Where(o => o.Doc_No == Doc_Number && o.Doc_Ty == 2).Max(q=>q.Lc_No)+1;
            //short New_Ln_Number = short.Parse(Hf_Ln_No.Value);
            //Int64 Itm_Number = Convert.ToInt64(DDL_Itm_NmAr.SelectedValue);
            //short Unit = 1;
            //Decimal Quntity = Convert.ToDecimal(Txt_Qty.Text);
            //string Ex_Date = Txt_Exp_Date.Text;
            //Decimal Unit_Pur = Convert.ToDecimal(Txt_Itm_Pur.Text);
            //Decimal T_Pur = Convert.ToDecimal(Txt_Titm_Pur.Text);
            //Decimal disc = Convert.ToDecimal(Txt_Disc1_Prct.Text);
            //Decimal Disc_Val = Convert.ToDecimal(Txt_Disc1_Val.Text);
            //Decimal Unit_Sal = Convert.ToDecimal(Txt_Item_Sal.Text);
            //Decimal T_Sal = Convert.ToDecimal(Txt_TItem_Sal.Text);
            //Decimal Fc_Unit = Convert.ToDecimal(Txt_FcItm_Pur.Text);
            //Decimal TFC =Convert.ToDecimal(Txt_FcTitm_Pur.Text);
            //string Batch_Number = Txt_Batch_No.Text;
            //Decimal Tax = Convert.ToDecimal(Txt_Taxp_Extra.Text);
            //Decimal Tax_Val = Convert.ToDecimal(Txt_Taxv_Extra.Text);
            //short Loc_Number = short.Parse(Txt_Loc_No.Text);
            //short Toooo_Store = short.Parse(DDL_To_Store.SelectedValue);

            //InvLoddtl New_Inv_Details = new InvLoddtl()
            //{              
            //    Cmp_No= Cmpany_No,
            //    Actvty_No= Activity_No,
            //    StoreID= store_ID,
            //    Doc_No= Doc_Number,
            //    Doc_Ty=2,
            //    Ln_No = New_Ln_Number,
            //    Itm_No =Itm_Number,
            //    Qty=Quntity,
            //    Unit_No=Unit,
            //    Exp_Date=Ex_Date,
            //    Itm_Pur= Unit_Pur,
            //    Titm_Pur= T_Pur,
            //    Disc1_Prct= disc,
            //    Disc1_Val= Disc_Val,
            //    Itm_Sal= Unit_Sal,
            //    Titm_Sal= T_Sal,
            //    FcItm_Pur= Fc_Unit,
            //    FcTitm_Pur= TFC,
            //    Batch_No=Batch_Number,
            //    Taxp_Extra=Tax,
            //    Taxv_Extra=Tax_Val,
            //    Loc_No=Loc_Number,
            //    To_Store=Toooo_Store

            //};
            //db.InvLoddtl.Add(New_Inv_Details);
            //db.SaveChanges();
            //Lbl_Msg.Text = "تمت الإضافة بنجاح";
           
            //الاضافة
            //SqlCommand cmd = new SqlCommand("INSERT INTO [InvLoddtl] ([Cmp_No], [Actvty_No], [StoreID], [Doc_Ty], [Doc_No], [Ln_No], [Doc_Dt], [Doc_DtAr], [Reftyp_No], [Pym_No], [To_Store], [Unit_No], [Qty], [Exp_Date], [Itm_Pur], [Titm_Pur], [Itm_Sal], [Titm_Sal], [Disc1_Prct], [Disc1_Val], [FcItm_Pur], [FcTitm_Pur], [Batch_No], [Taxp_Extra], [Taxv_Extra], [Sup_No], [Loc_No], [Itm_No]) VALUES (@Cmp_No, @Actvty_No, @StoreID, @Doc_Ty, @Doc_No, @Ln_No, @Doc_Dt, @Doc_DtAr, @Reftyp_No, @Pym_No, @To_Store, @Unit_No, @Qty, @Exp_Date, @Itm_Pur, @Titm_Pur, @Itm_Sal, @Titm_Sal, @Disc1_Prct, @Disc1_Val, @FcItm_Pur, @FcTitm_Pur, @Batch_No, @Taxp_Extra, @Taxv_Extra, @Sup_No, @Loc_No, @Itm_No)", cn);
            //cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
            //cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            //cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            //cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            //cmd.Parameters.AddWithValue("@Doc_Ty", int.Parse(DDL_Reftyp_No.SelectedValue));
            //cmd.Parameters.AddWithValue("@Ln_No", int.Parse(Hf_Ln_No.Value));
            //cmd.Parameters.AddWithValue("@Doc_Dt",Convert.ToDateTime(Txt_Doc_Dt.Text));
            //cmd.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
            //cmd.Parameters.AddWithValue("@Reftyp_No", int.Parse(DDL_Reftyp_No.SelectedValue));
            //cmd.Parameters.AddWithValue("@Pym_No", int.Parse(DDL_Pym_No.SelectedValue));
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
            //cmd.Parameters.AddWithValue("@Itm_Sal", Convert.ToDecimal(Txt_Item_Sal.Text));
            //cmd.Parameters.AddWithValue("@TItm_Sal", Convert.ToDecimal(Txt_TItem_Sal.Text));
            //cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(Txt_FcItm_Pur.Text));
            //cmd.Parameters.AddWithValue("@FcTitm_Pur", Convert.ToDecimal(Txt_FcTitm_Pur.Text));
            //cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(Txt_Taxp_Extra.Text));
            //cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(Txt_Taxv_Extra.Text));
            //cn.Open();
            //cmd.ExecuteNonQuery();
            //cn.Close();
           

        }


        private void Gett_Titm_Pur()
        {
            //if (Txt_Qty.Text != "" && Txt_Itm_Pur.Text != "")
            //{
            //    Decimal Qty = Convert.ToDecimal(Txt_Qty.Text);
            //    Decimal Itm_Pur = Convert.ToDecimal(Txt_Itm_Pur.Text);
            //    Decimal Total = Qty * Itm_Pur;
            //    Txt_Titm_Pur.Text = Total.ToString();
            //}
            //else if (Txt_Itm_Pur.Text == "")
            //{
            //    Response.Write("<script>alert('أدخل سعر الوحدة')</script>");
            //}
            //else if (Txt_Qty.Text == "")
            //{
            //    Response.Write("<script>alert('أدخل الكمية')</script>");
            //}
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
                //Txt_Itm_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                //DDL_Itm_NmAr.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Itm_No"].ToString();
                //DDL_Itm_Unit.SelectedValue = Ds.Tables["InvLoddtl"].Rows[0]["Unit_No"].ToString();
                //Txt_Loc_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Loc_No"].ToString();
                //Txt_Qty.Text = Ds.Tables["InvLoddtl"].Rows[0]["Qty"].ToString();
                //Txt_Itm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_Pur"].ToString();
                //Txt_Titm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["Titm_Pur"].ToString();
                //Txt_Exp_Date.Text = Ds.Tables["InvLoddtl"].Rows[0]["Exp_Date"].ToString();
                //Txt_Batch_No.Text = Ds.Tables["InvLoddtl"].Rows[0]["Batch_No"].ToString();
                //Txt_Disc1_Prct.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc1_Prct"].ToString();
                //Txt_Disc1_Val.Text = Ds.Tables["InvLoddtl"].Rows[0]["Disc1_Val"].ToString();
                //Txt_Item_Sal.Text = Ds.Tables["InvLoddtl"].Rows[0]["Itm_SalSubUnt"].ToString();
                //Txt_TItem_Sal.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcTitm_Sal"].ToString();
                //Txt_FcItm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcItm_Pur"].ToString();
                //Txt_FcTitm_Pur.Text = Ds.Tables["InvLoddtl"].Rows[0]["FcTitm_Cost"].ToString();
                //Txt_Taxp_Extra.Text = Ds.Tables["InvLoddtl"].Rows[0]["Taxp_Extra"].ToString();
                //Txt_Taxv_Extra.Text = Ds.Tables["InvLoddtl"].Rows[0]["Taxv_Extra"].ToString();
                cn.Close();
            }
            catch (Exception)
            {

                throw;
            }
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
            InvLodhdr_Update();
        }

        protected void GV_ItmName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue;

            //((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_Itm_Unit")).DataBind();
        }

        protected void GV_Itm_No_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text;
            //}
            //catch
            //{
            //    ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text = "";
            //    ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_ItmName")).SelectedValue = "0";


            //}

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
            //SQL_GVInv_Details.InsertParameters["To_Store"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_To_Store")).SelectedValue;
            //SQL_GVInv_Details.InsertParameters["Unit_No"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("GV_Itm_Unit")).SelectedValue;
            //SQL_GVInv_Details.InsertParameters["Qty"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Qty")).Text;
            //SQL_GVInv_Details.InsertParameters["Exp_Date"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Exp_Date")).Text;
            //SQL_GVInv_Details.InsertParameters["Itm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_Pur")).Text;
            //SQL_GVInv_Details.InsertParameters["Titm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_TItm_Pur")).Text;
            //SQL_GVInv_Details.InsertParameters["Itm_Sal"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_ItmSal")).Text;
            //SQL_GVInv_Details.InsertParameters["Titm_Sal"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_TitmSal")).Text;
            //SQL_GVInv_Details.InsertParameters["Disc1_Prct"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV__Disc1_Prct")).Text;
            //SQL_GVInv_Details.InsertParameters["Disc1_Val"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Disc1_Val")).Text;
            //SQL_GVInv_Details.InsertParameters["FcItm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_FcItm_Pur")).Text;
            //SQL_GVInv_Details.InsertParameters["FcTitm_Pur"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_FcTitm_Pur")).Text;
            //SQL_GVInv_Details.InsertParameters["Batch_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Batch_No")).Text;
            //SQL_GVInv_Details.InsertParameters["Taxp_Extra"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Taxp_Extra")).Text;
            //SQL_GVInv_Details.InsertParameters["Taxv_Extra"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Taxv_Extra")).Text;
            //SQL_GVInv_Details.InsertParameters["Sup_No"].DefaultValue = ((DropDownList)GVInv_Details.HeaderRow.FindControl("DDL_Sup_No")).SelectedValue;
            //SQL_GVInv_Details.InsertParameters["Loc_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Loc_No")).Text;
            //SQL_GVInv_Details.InsertParameters["Itm_No"].DefaultValue = ((TextBox)GVInv_Details.HeaderRow.FindControl("GV_Itm_No")).Text;
            SQL_GVInv_Details.Insert();
            //GVInv_Details.DataBind();

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
      

            //short Comp_No = short.Parse(DDL_Com_NO.SelectedValue);
            //short Activ_No = short.Parse(DDL_Actinvity_NO.SelectedValue);
            //short Store_No = short.Parse(DDL_Store_Number.SelectedValue);
            //Int64 Doc_No = Int64.Parse(Txt_Doc_No.Text);

            //InvLodhdr Header = new InvLodhdr()
            //{
            //    Cmp_No = Comp_No,
            //    Actvty_No = Activ_No,
            //    StoreID = Store_No,
            //    Doc_No = Doc_No,
            //    Doc_Ty = 2
            //};
            //db.InvLodhdr.Remove(Header);
            //db.SaveChanges();
        }

        protected void Btn_Delete_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete from InvLodhdr where Cmp_No=@Cmp_No and Actvty_No=@Actvty_No and StoreID=@StoreID and Doc_Ty=2 and Doc_No=@Doc_No", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", Convert.ToInt64(Txt_Doc_No.Text));
            cmd.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            cmd.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            cmd.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        private void InvLoddtl_Update_Pur()
        {
            //try
            //{
            short Row_ID = short.Parse(Hf_Ln_No.Value);
            cn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE InvLoddtl SET Itm_No = @Itm_No,Unit_No = @Unit_No,Qty = @Qty,Exp_Date = @Exp_Date,Itm_Pur = @Itm_Pur,Titm_Pur = @Titm_Pur,Itm_Sal = @Itm_Sal,Titm_Sal = @Titm_Sal,Disc1_Prct = @Disc1_Prct,Disc1_Val = @Disc1_Val,FcItm_Pur = @FcItm_Pur,FcTitm_Pur = @FcTitm_Pur,Batch_No = @Batch_No,Taxp_Extra = @Taxp_Extra,Taxv_Extra = @Taxv_Extra,Loc_No = @Loc_No, To_Store = @To_Store  WHERE Doc_Ty = 2 AND Doc_No = @Doc_No AND Ln_No = @Ln_No", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", int.Parse(Txt_Doc_No.Text));            
            cmd.Parameters.AddWithValue("@Ln_No", Row_ID);
            cmd.Parameters.AddWithValue("@Itm_No", Int64.Parse(((DropDownList)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Itm_Name")).Text));
            cmd.Parameters.AddWithValue("@Unit_No", short.Parse(((DropDownList)GV_Details_Invoice.Rows[Row_ID].FindControl("DDL_GV_Unit")).SelectedValue));            
            cmd.Parameters.AddWithValue("@Exp_Date", ((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Exp_Date")).Text);
            cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Qty")).Text));
            cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Itm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Titm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Disc1_Prct")).Text));
            cmd.Parameters.AddWithValue("@Disc1_Val", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Disc1_Val")).Text));
            cmd.Parameters.AddWithValue("@Itm_Sal", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Itm_Sal")).Text));
            cmd.Parameters.AddWithValue("@Titm_Sal", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Titm_Sal")).Text));
            cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_FcItm_Pur")).Text));
            cmd.Parameters.AddWithValue("@FcTitm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_FcTitm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Batch_No", ((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Batch_No")).Text);
            cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Taxp_Extra")).Text));
            cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Taxv_Extra")).Text));
            cmd.Parameters.AddWithValue("@Loc_No", short.Parse(((TextBox)GV_Details_Invoice.Rows[Row_ID].FindControl("GV_Loc_No")).Text));
            cmd.Parameters.AddWithValue("@To_Store", short.Parse(((DropDownList)GV_Details_Invoice.Rows[Row_ID].FindControl("DDL_GV_ToStore")).SelectedValue));
            cmd.ExecuteNonQuery();
            cn.Close();
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }

        //رقم الصنف
        protected void GV_Itm_No_TextChanged1(object sender, EventArgs e)
        {
            int RowIndex = ((GridViewRow)((TextBox)sender).NamingContainer).RowIndex;
            try
            {                
                ((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Name")).SelectedValue = ((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_No")).Text;
                if (RowIndex==0)
                {
                    InvLodhdr_Update();
                }
            }
            catch 
            {
                ((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Name")).SelectedValue = "0";
                ((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_No")).Text = "";
            }
            
        }

        
        //الوحدة
        protected void DDL_GV_Unit_SelectedIndexChanged(object sender, EventArgs e)
        {
            int RowIndex = ((GridViewRow)((DropDownList)sender).NamingContainer).RowIndex;
           
        }
        //اسم الصنف
        protected void GV_Itm_SelectedIndexChanged(object sender, EventArgs e)
        {
            int RowIndex = ((GridViewRow)((DropDownList)sender).NamingContainer).RowIndex;
            ((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_No")).Text = ((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Name")).SelectedValue;
            if (RowIndex == 0)
            {
                InvLodhdr_Update();
            }
        }
        //المستودع
        protected void DDL_GV_ToStore_SelectedIndexChanged(object sender, EventArgs e)
        {
            //تعديل بيانات السطر في الجدول
            int RowIndex = ((GridViewRow)((DropDownList)sender).NamingContainer).RowIndex;
            Hf_Ln_No.Value = ((Label)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Ln_No")).Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE InvLoddtl SET Itm_No = @Itm_No,Unit_No = @Unit_No,Qty = @Qty,Exp_Date = @Exp_Date,Itm_Pur = @Itm_Pur,Titm_Pur = @Titm_Pur,Itm_Sal = @Itm_Sal,Titm_Sal = @Titm_Sal,Disc1_Prct = @Disc1_Prct,Disc1_Val = @Disc1_Val,FcItm_Pur = @FcItm_Pur,FcTitm_Pur = @FcTitm_Pur,Batch_No = @Batch_No,Taxp_Extra = @Taxp_Extra,Taxv_Extra = @Taxv_Extra,Loc_No = @Loc_No, To_Store = @To_Store  WHERE Doc_Ty = 2 AND Doc_No = @Doc_No AND Ln_No = @Ln_No", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Doc_No", int.Parse(Txt_Doc_No.Text));
            cmd.Parameters.AddWithValue("@Ln_No", short.Parse(Hf_Ln_No.Value));
            cmd.Parameters.AddWithValue("@Itm_No", Int64.Parse(((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Name")).Text));
            cmd.Parameters.AddWithValue("@Unit_No", short.Parse(((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("DDL_GV_Unit")).SelectedValue));
            cmd.Parameters.AddWithValue("@Exp_Date", ((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Exp_Date")).Text);
            cmd.Parameters.AddWithValue("@Qty", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Qty")).Text));
            cmd.Parameters.AddWithValue("@Itm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Titm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Titm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Disc1_Prct", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Disc1_Prct")).Text));
            cmd.Parameters.AddWithValue("@Disc1_Val", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Disc1_Val")).Text));
            cmd.Parameters.AddWithValue("@Itm_Sal", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Itm_Sal")).Text));
            cmd.Parameters.AddWithValue("@Titm_Sal", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Titm_Sal")).Text));
            cmd.Parameters.AddWithValue("@FcItm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_FcItm_Pur")).Text));
            cmd.Parameters.AddWithValue("@FcTitm_Pur", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_FcTitm_Pur")).Text));
            cmd.Parameters.AddWithValue("@Batch_No", ((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Batch_No")).Text);
            cmd.Parameters.AddWithValue("@Taxp_Extra", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Taxp_Extra")).Text));
            cmd.Parameters.AddWithValue("@Taxv_Extra", Convert.ToDecimal(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Taxv_Extra")).Text));
            cmd.Parameters.AddWithValue("@Loc_No", short.Parse(((TextBox)GV_Details_Invoice.Rows[RowIndex].FindControl("GV_Loc_No")).Text));
            cmd.Parameters.AddWithValue("@To_Store", short.Parse(((DropDownList)GV_Details_Invoice.Rows[RowIndex].FindControl("DDL_GV_ToStore")).SelectedValue));
            cmd.ExecuteNonQuery();
            cn.Close();
            //سطر جديد 
            //New_Ln_No();
            //SqlCommand cmd1 = new SqlCommand("insert into InvLoddtl (Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No,Doc_Dt,Doc_DtAr,Reftyp_No,Pym_No,To_Store,Sup_No,Loc_No)  values  (@Cmp_No,@Actvty_No,@StoreID,2,@Doc_No,@Ln_No, @Doc_Dt,@Doc_DtAr,@Reftyp_No,@Pym_No,@To_Store,@Sup_No,1)", cn);
            //cmd1.CommandType = CommandType.Text;
            //cmd1.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            //cmd1.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            //cmd1.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            //cmd1.Parameters.AddWithValue("@Doc_No", Int64.Parse(Txt_Doc_No.Text));
            //cmd1.Parameters.AddWithValue("@Ln_No", int.Parse(Hf_Ln_No.Value));
            //cmd1.Parameters.AddWithValue("@Doc_Dt", Convert.ToDateTime(Txt_Doc_Dt.Text));
            //cmd1.Parameters.AddWithValue("@Doc_DtAr",Convert.ToDateTime(Txt_Doc_DtAr.Text).ToString("dd/MM/yy"));
            //cmd1.Parameters.AddWithValue("@Reftyp_No", int.Parse(DDL_Reftyp_No.SelectedValue));
            //cmd1.Parameters.AddWithValue("@Pym_No", int.Parse(DDL_Pym_No.SelectedValue));
            //cmd1.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
            //cmd1.Parameters.AddWithValue("Sup_No", int.Parse(DDL_Sup_No.SelectedValue));
            //cn.Open();
            //cmd1.ExecuteNonQuery();
            //cn.Close();
            Insert_Details();
            //Refresh GridView
            GV_Details_Invoice.DataBind();
            //النزول في السطر التالي عند رقم الصنف
            ((TextBox)GV_Details_Invoice.Rows[RowIndex+1].FindControl("GV_Itm_No")).Focus();
        }

        private void Insert_Details()
        {
            ////الحصول على عدد الاسطر الفارغة
            //SqlCommand Comd = new SqlCommand("select COUNT(Ln_No) from InvLoddtl where Doc_No=@Doc_No and Doc_Ty=2 and Itm_No<1", cn);
            //Comd.CommandType = CommandType.Text;
            //Comd.Parameters.AddWithValue("@Doc_No", Int64.Parse(Txt_Doc_No.Text));
            //cn.Open();
            //int X = int.Parse(Comd.ExecuteScalar().ToString());
            //cn.Close();
            ////إذا كانت عدد الاسطر الفارغة أقل من سطر واحد يضيف سطر جديد فارغ
            //if (X < 1)
            //{
            //سطر جديد 
            //Int64 D_No = Convert.ToInt64(Txt_Doc_No.Text);
            //var NID = db.InvLoddtl.Where(o => o.Doc_Ty == 2 && o.Doc_No== D_No).Max(q => q.Ln_No);
            //int NewID = int.Parse(NID.ToString()) + 1;
            //New_Ln_No();
            SqlCommand cmd1 = new SqlCommand("insert into InvLoddtl (Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No,Doc_Dt,Doc_DtAr,Reftyp_No,Pym_No,To_Store,Sup_No,Loc_No)  values  (@Cmp_No,@Actvty_No,@StoreID,2,@Doc_No,@Ln_No, @Doc_Dt,@Doc_DtAr,@Reftyp_No,@Pym_No,@To_Store,@Sup_No,1)", cn);
            cmd1.CommandType = CommandType.Text;
            cmd1.Parameters.AddWithValue("@Cmp_No", int.Parse(DDL_Com_NO.SelectedValue));
            cmd1.Parameters.AddWithValue("@Actvty_No", int.Parse(DDL_Actinvity_NO.SelectedValue));
            cmd1.Parameters.AddWithValue("@StoreID", int.Parse(DDL_Store_Number.SelectedValue));
            cmd1.Parameters.AddWithValue("@Doc_No", Int64.Parse(Txt_Doc_No.Text));
            cmd1.Parameters.AddWithValue("@Ln_No",int.Parse(Hf_Ln_No.Value));
            cmd1.Parameters.AddWithValue("@Doc_Dt", Convert.ToDateTime(Txt_Doc_Dt.Text));
            cmd1.Parameters.AddWithValue("@Doc_DtAr", Convert.ToDateTime(Txt_Doc_DtAr.Text).ToString("dd/MM/yy"));
            //cmd1.Parameters.AddWithValue("@Doc_DtAr", Txt_Doc_DtAr.Text);
            cmd1.Parameters.AddWithValue("@Reftyp_No", int.Parse(DDL_Reftyp_No.SelectedValue));
            cmd1.Parameters.AddWithValue("@Pym_No", int.Parse(DDL_Pym_No.SelectedValue));
            cmd1.Parameters.AddWithValue("@To_Store", int.Parse(DDL_To_Store.SelectedValue));
            cmd1.Parameters.AddWithValue("Sup_No", int.Parse(DDL_Sup_No.SelectedValue));
            cn.Open();
            cmd1.ExecuteNonQuery();
            cn.Close();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            New_Ln_No(); 
            Insert_Details();
            GV_Details_Invoice.DataBind();
        }
    }
}