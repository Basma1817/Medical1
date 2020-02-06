using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_custmr : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DropDownList4.DataValueField = "Cmp_No";
                DropDownList4.DataTextField = "Cmp_Nm";
                DropDownList4.DataSource = db.MainCmpnam.ToList();
                DropDownList4.DataBind();
                TextBox22.Text = DropDownList4.SelectedValue;


                DropDownList5.DataValueField = "Brn_No";
                DropDownList5.DataTextField = "Brn_NmAr";
                DropDownList5.DataSource = db.MainBranch.ToList();
                DropDownList5.DataBind();
                ViewState["id"] = 0;
                load_tree();
            }
        }
        protected void load_tree()
        {
            //TreeView1.Nodes.Clear();
            //int no = int.Parse(DropDownList4.SelectedValue);
            //foreach (MtsCustmr cstm in db.MtsCustmr.Where(o => o.Cmp_No == no && o.Parent_Cstm == 0))
            //{
            //    TreeNode node = new TreeNode();
            //    node.Text = cstm.Cstm_NmAr.ToString();
            //    node.Value = cstm.Cstm_No.ToString();
            //    //you can affect the node.NavigateUrl

            //    node.PopulateOnDemand = true;
            //    TreeView1.Nodes.Add(node);
            //}
            //TreeView1.CollapseAll();
        }


        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox22.Text = DropDownList4.SelectedValue;
            int no = int.Parse(DropDownList4.SelectedValue);
            DropDownList5.DataValueField = "Brn_No";
            DropDownList5.DataTextField = "Brn_NmAr";
            DropDownList5.DataSource = db.MainBranch.Where(o => o.Cmp_No == no).ToList();
            DropDownList5.DataBind();

            load_tree();
        }



        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {


        }



        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

            //int id = int.Parse(TreeView1.SelectedNode.Value);
            //ViewState["id"] = id;

            //var cn = db.MtsCustmr.Where(o => o.Cstm_No == id).SingleOrDefault();


            //TextBox15.Text = cn.Cstm_NmAr.ToString();
            //if (!string.IsNullOrEmpty(cn.Cstm_Email))
            //    TextBox5.Text = cn.Cstm_Email.ToString();
            //TextBox14.Text = cn.Cstm_No.ToString();
            //TextBox2.Text = cn.Cstm_NmEn.ToString();
            //if (!string.IsNullOrEmpty(cn.Tel1))
            //    TextBox6.Text = cn.Tel1.ToString();
            //if (!string.IsNullOrEmpty(cn.Cstm_Tel))
            //    TextBox7.Text = cn.Cstm_Tel.ToString();
            //if (!string.IsNullOrEmpty(cn.Mobile))
            //    TextBox8.Text = cn.Mobile.ToString();
            //if (!decimal.Equals(cn.Credit_Value, DBNull.Value))
            //    TextBox9.Text = cn.Credit_Value.ToString();
            //فئة المورد
            //DropDownList2.SelectedValue = cn.Catg_No.ToString();
            //DropDownList3.SelectedValue = cn.Cntry_No.ToString();

            //DropDownList1.SelectedValue = cn.curncy_no.ToString();

            //TextBox16.Text = string.IsNullOrEmpty(cn.Cstm_Adr) ? "" : cn.Cstm_Adr.ToString();
            //TextBox3.Text = cn.Sup_Rsp.ToString();
            //TextBox10.Text = cn.Credit_Days.ToString();
            //TextBox1.Text = cn.Level_no.ToString();
            //TextBox11.Text = cn.Fbal_CR.ToString();
            //TextBox12.Text = cn.Fbal_Db.ToString();
            //RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
            //TextBox26.Text = cn.Brn_No.ToString();
            //var cn1 = db.MtsCustmrOthr.Where(o => o.Cstm_No == id).SingleOrDefault();
            //if (cn1 != null)
            //{
            //    TextBox22.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn1) ? "" : cn1.Cntct_Prsn1.ToString();
            //    TextBox30.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn2) ? "" : cn1.Cntct_Prsn2.ToString();
            //    TextBox31.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn3) ? "" : cn1.Cntct_Prsn3.ToString();
            //    TextBox35.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn4) ? "" : cn1.Cntct_Prsn4.ToString();
            //    TextBox36.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn5) ? "" : cn1.Cntct_Prsn5.ToString();
            //    TextBox23.Text = string.IsNullOrEmpty(cn1.TitL1) ? "" : cn1.TitL1.ToString();
            //    TextBox37.Text = string.IsNullOrEmpty(cn1.TitL2) ? "" : cn1.TitL2.ToString();
            //    TextBox38.Text = string.IsNullOrEmpty(cn1.TitL3) ? "" : cn1.TitL3.ToString();
            //    TextBox39.Text = string.IsNullOrEmpty(cn1.TitL4) ? "" : cn1.TitL4.ToString();
            //    TextBox40.Text = string.IsNullOrEmpty(cn1.TitL5) ? "" : cn1.TitL5.ToString();
            //    TextBox24.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email1.ToString();
            //    TextBox42.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email2.ToString();
            //    TextBox43.Text = string.IsNullOrEmpty(cn1.Email3) ? "" : cn1.Email3.ToString();
            //    TextBox44.Text = string.IsNullOrEmpty(cn1.Email4) ? "" : cn1.Email4.ToString();
            //    TextBox41.Text = string.IsNullOrEmpty(cn1.Email5) ? "" : cn1.Email5.ToString();
            //    TextBox25.Text = string.IsNullOrEmpty(cn1.Mobile1) ? "" : cn1.Mobile1.ToString();
            //    TextBox45.Text = string.IsNullOrEmpty(cn1.Mobile2) ? "" : cn1.Mobile2.ToString();
            //    TextBox46.Text = string.IsNullOrEmpty(cn1.Mobile3) ? "" : cn1.Mobile3.ToString();
            //    TextBox47.Text = string.IsNullOrEmpty(cn1.Mobile4) ? "" : cn1.Mobile4.ToString();
            //    TextBox48.Text = string.IsNullOrEmpty(cn1.Mobile5) ? "" : cn1.Mobile5.ToString();
            //    TextBox60.Text = string.IsNullOrEmpty(cn1.Notes) ? "" : cn1.Notes.ToString();
            //}
            //else
            //{
            //    TextBox22.Text = "";
            //    TextBox30.Text = "";
            //    TextBox31.Text = "";
            //    TextBox35.Text = "";
            //    TextBox36.Text = "";
            //    TextBox23.Text = "";
            //    TextBox37.Text = "";
            //    TextBox38.Text = "";
            //    TextBox39.Text = "";
            //    TextBox40.Text = "";
            //    TextBox24.Text = "";
            //    TextBox42.Text = "";
            //    TextBox43.Text = "";
            //    TextBox44.Text = "";
            //    TextBox41.Text = "";
            //    TextBox25.Text = "";
            //    TextBox45.Text = "";
            //    TextBox46.Text = "";
            //    TextBox47.Text = "";
            //    TextBox48.Text = "";
            //    TextBox60.Text = "";
            //}

            //int no = int.Parse(DropDownList4.SelectedValue);
            //DataSet dataSet = new DataSet("myDataSet");
            //dataSet.Tables.Add(new DataTable());

            //Setup the table columns.


            //dataSet.Tables[0].Columns.Add("الشهر", typeof(string));
            //dataSet.Tables[0].Columns.Add("الحركة مدين", typeof(int));
            //dataSet.Tables[0].Columns.Add("الحركة دائن", typeof(int));
            //dataSet.Tables[0].Columns.Add("الرصيد الحالي", typeof(int));
            //dataSet.Tables[0].Columns.Add("الرصيد التقديرى", typeof(int));
            //if ((db.MtsCustmr.Where(o => o.Cmp_No == no && o.Cstm_No == id).Count() > 0))
            //{
            //    for (int i = 1; i <= 12; i++)
            //    {
            //        var result = db.select_grid_MtsCustmr(id, i, no).SingleOrDefault();
            //        DataRow row = dataSet.Tables[0].NewRow();
            //        row["الشهر"] = result.month == null ? "" : result.month;
            //        row["الحركة مدين"] = result.debit == null ? 0 : result.debit;
            //        row["الحركة دائن"] = result.credit == null ? 0 : result.credit;
            //        row["الرصيد الحالي"] = result.rassid == null ? 0 : result.rassid;

            //        dataSet.Tables[0].Rows.Add(row);
            //    }

            //    DataRow total = dataSet.Tables[0].NewRow();
            //    total["الشهر"] = "الإجمالي";
            //    total["الحركة مدين"] = dataSet.Tables[0].Compute("sum([الحركة مدين])", "");
            //    total["الحركة دائن"] = dataSet.Tables[0].Compute("sum([الحركة دائن])", "");
            //    total["الرصيد الحالي"] = dataSet.Tables[0].Compute("sum([الرصيد الحالي])", "");
            //    dataSet.Tables[0].Rows.Add(total);

            //    GridView1.DataSource = dataSet.Tables[0];

            //    GridView1.DataBind();
            //}
        }


        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;
            int no = int.Parse(DropDownList4.SelectedValue);
            foreach (MtsCustmr cstm in db.MtsCustmr.Where(o => o.Parent_Cstm == id))
            {
                TreeNode node = new TreeNode(cstm.Cstm_NmAr.ToString(), cstm.Cstm_No.ToString());
                if (db.MtsCustmr.Where(o => o.Parent_Cstm == cstm.Cstm_No && o.Cmp_No == no).Count() > 0)
                    node.PopulateOnDemand = true;
                else
                    node.PopulateOnDemand = false;

                //node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }
        }


        //protected void Button5_Click(object sender, EventArgs e)
        //{

        //    MtsCustmr cn = new MtsCustmr();
        //    cn.Cstm_No = long.Parse(TextBox14.Text);
        //    cn.Cmp_No = short.Parse(DropDownList4.SelectedValue);

        //    int p = int.Parse(ViewState["id"].ToString());
        //    /// to set level of new node 
        //    if (p == 0)
        //    {
        //        cn.Level_no = 1;
        //    }
        //    else
        //    {
        //        var result = db.MtsCustmr.Where(o => o.Cstm_No == p).SingleOrDefault();
        //        cn.Level_no = Convert.ToInt16(result.Level_no + 1);
        //    }
        //    if (string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue)) { }
        //    else
        //        cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);

        //    cn.Cstm_NmAr = TextBox15.Text;
        //    cn.Cstm_NmEn = TextBox2.Text;
        //    //cn.Sup_Email = TextBox5.Text;
        //    cn.Tel1 = TextBox6.Text;
        //    cn.Cstm_Tel = TextBox7.Text;
        //    // cn.Credit_Value = Convert.ToDecimal(TextBox9.Text);
        //    // cn.Tel1 = TextBox6.Text;
        //    // cn.Curncy_No = short.Parse(TextBox13.Text);
        //    TextBox1.Text = cn.Level_no.ToString();
        //    //cn.Level_no = short.Parse(TextBox1.Text);
        //    //cn.Sup_Adr = Convert.ToString(TextBox16.Text);
        //    //cn.Credit_Days = Convert.ToInt16(TextBox10.Text);
        //    // if (!string.IsNullOrEmpty(cn.Fbal_CR))
        //    if (string.IsNullOrEmpty(TextBox11.Text) || string.IsNullOrWhiteSpace(TextBox11.Text)) { }
        //    else
        //        cn.Fbal_CR = Convert.ToDecimal(TextBox11.Text);
        //    if (string.IsNullOrEmpty(TextBox12.Text) || string.IsNullOrWhiteSpace(TextBox12.Text)) { }
        //    else
        //        cn.Fbal_Db = Convert.ToDecimal(TextBox12.Text);

        //    if (string.IsNullOrEmpty(TextBox26.Text) || string.IsNullOrWhiteSpace(TextBox26.Text)) { }
        //    else
        //        cn.Brn_No = short.Parse(TextBox26.Text);

        //    if (string.IsNullOrEmpty(TextBox16.Text) || string.IsNullOrWhiteSpace(TextBox16.Text)) { }
        //    else
        //        cn.Parent_Cstm = Convert.ToInt16(ViewState["id"]);

        //    //DropDownList1.SelectedValue = Convert.ToString(cn.curncy);
        //    DropDownList2.SelectedValue = Convert.ToString(cn.Cstm_Ctg);
        //    DropDownList3.SelectedValue = Convert.ToString(cn.Cntry_No);

        //    // long id = 0;
        //    int id = int.Parse(TreeView1.SelectedNode.Value);
        //    ViewState["id"] = "0";
        //    var cn1 = db.MtsCustmrOthr.Where(o => o.Cstm_No == id).SingleOrDefault();
        //    if (cn1 != null)
        //    {
        //        TextBox22.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn1) ? "" : cn1.Cntct_Prsn1.ToString();
        //        TextBox30.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn2) ? "" : cn1.Cntct_Prsn2.ToString();
        //        TextBox31.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn3) ? "" : cn1.Cntct_Prsn3.ToString();
        //        TextBox35.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn4) ? "" : cn1.Cntct_Prsn4.ToString();
        //        TextBox36.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn5) ? "" : cn1.Cntct_Prsn5.ToString();
        //        TextBox23.Text = string.IsNullOrEmpty(cn1.TitL1) ? "" : cn1.TitL1.ToString();
        //        TextBox37.Text = string.IsNullOrEmpty(cn1.TitL2) ? "" : cn1.TitL2.ToString();
        //        TextBox38.Text = string.IsNullOrEmpty(cn1.TitL3) ? "" : cn1.TitL3.ToString();
        //        TextBox39.Text = string.IsNullOrEmpty(cn1.TitL4) ? "" : cn1.TitL4.ToString();
        //        TextBox40.Text = string.IsNullOrEmpty(cn1.TitL5) ? "" : cn1.TitL5.ToString();
        //        TextBox24.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email1.ToString();
        //        TextBox42.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email2.ToString();
        //        TextBox43.Text = string.IsNullOrEmpty(cn1.Email3) ? "" : cn1.Email3.ToString();
        //        TextBox44.Text = string.IsNullOrEmpty(cn1.Email4) ? "" : cn1.Email4.ToString();
        //        TextBox41.Text = string.IsNullOrEmpty(cn1.Email5) ? "" : cn1.Email5.ToString();
        //        TextBox25.Text = string.IsNullOrEmpty(cn1.Mobile1) ? "" : cn1.Mobile1.ToString();
        //        TextBox45.Text = string.IsNullOrEmpty(cn1.Mobile2) ? "" : cn1.Mobile2.ToString();
        //        TextBox46.Text = string.IsNullOrEmpty(cn1.Mobile3) ? "" : cn1.Mobile3.ToString();
        //        TextBox47.Text = string.IsNullOrEmpty(cn1.Mobile4) ? "" : cn1.Mobile4.ToString();
        //        TextBox48.Text = string.IsNullOrEmpty(cn1.Mobile5) ? "" : cn1.Mobile5.ToString();
        //        TextBox60.Text = string.IsNullOrEmpty(cn1.Notes) ? "" : cn1.Notes.ToString();
        //    }
        //    else
        //    {
        //        TextBox22.Text = "";
        //        TextBox30.Text = "";
        //        TextBox31.Text = "";
        //        TextBox35.Text = "";
        //        TextBox36.Text = "";
        //        TextBox23.Text = "";
        //        TextBox37.Text = "";
        //        TextBox38.Text = "";
        //        TextBox39.Text = "";
        //        TextBox40.Text = "";
        //        TextBox24.Text = "";
        //        TextBox42.Text = "";
        //        TextBox43.Text = "";
        //        TextBox44.Text = "";
        //        TextBox41.Text = "";
        //        TextBox25.Text = "";
        //        TextBox45.Text = "";
        //        TextBox46.Text = "";
        //        TextBox47.Text = "";
        //        TextBox48.Text = "";
        //        TextBox60.Text = "";
        //    }

        //db.MtsSuplirOthr.Add(cn1);
        //db.SaveChanges();

        //    db.MtsCustmr.Add(cn);
        //    db.SaveChanges();
        //    load_tree(/*Convert.ToInt16(ViewState["ID"])*/);



        //}



        //protected void Button5_Click(object sender, EventArgs e)
        //  {
        //try
        //{
        //    //string name = TextBox28.Text;
        //    int id = int.Parse(TextBox28.Text);

        //    var query = from p in db.MtsCustmr
        //                where p.Cstm_No == id
        //                select new
        //                {
        //                    رقم_التليفون = p.Tel1,
        //                    رقم_الموبايل = p.Mobile,
        //                    الايميل = p.Cstm_Email,
        //                    عنوان_العميل = p.Cstm_Adr,
        //                    اسم_العميل = p.Cstm_NmAr,
        //                    رقم_العميل = p.Cstm_No
        //                };
        //    //GridView1.DataSource = query.ToList();
        //    //GridView1.DataBind();
        //}
        //catch { }
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("insert_mts_custom.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (TreeView1.SelectedValue == "")
            //{
            //    string script = "alert(\"لم يتم إختيار عنصر للتعديل!\");";
            //    ScriptManager.RegisterStartupScript(this, GetType(),
            //                          "ServerControlScript", script, true);
            //}
            //else
            //    Response.Redirect("update_delete_mts_custm.aspx?no=" + TreeView1.SelectedValue);
        }
        protected void Button4_Click(object sender, EventArgs e)
        {


            //int id = int.Parse(ViewState["id"].ToString());
            //ViewState["id"] = id;

            //if (string.IsNullOrEmpty(TextBox14.Text))
            //{
            //    string script = "alert(\"لم يتم إختيار عنصر للحذف!\");";
            //    ScriptManager.RegisterStartupScript(this, GetType(),
            //                          "ServerControlScript", script, true);
            //}
            //else
            //{
            //    try
            //    {
            //        var cn = db.MtsCustmr.Where(o => o.Cstm_No == id).SingleOrDefault();

            //        db.MtsCustmr.Remove(cn);
            //        db.SaveChanges();
            //    }
            //    catch { }

            //    load_tree();


            //}
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_custmrReport.aspx");
        }
    }
}