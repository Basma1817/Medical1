using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_mts_suplier : System.Web.UI.Page
    {

     ICDBTrdAEntities   db = new ICDBTrdAEntities();
        //private long id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DropDownList4.DataValueField = "Cmp_No";
                DropDownList4.DataTextField = "Cmp_Nm";
                DropDownList4.DataSource = db.MainCmpnam.ToList();
                DropDownList4.DataBind();
                TextBox17.Text = DropDownList4.SelectedValue;


                DropDownList5.DataValueField = "Brn_No";
                DropDownList5.DataTextField = "Brn_NmAr";
                DropDownList5.DataSource = db.MainBranch.ToList();
                DropDownList5.DataBind();
                TextBox26.Text = DropDownList5.SelectedValue;

                ViewState["ID"] = 0;
                TextBox1.Text = (1).ToString();
                load_tree();
            }

            int no = int.Parse(DropDownList4.SelectedValue);
            //foreach (MtsSuplir sup in db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == 0))
            //{
            //    TreeNode node = new TreeNode();
            //    node.Text = sup.Sup_NmAr.ToString();
            //    node.Value = sup.Sup_No.ToString();
            //    //you can affect the node.NavigateUrl

            //    node.PopulateOnDemand = true;
            //    TreeView1.Nodes.Add(node);
            //}
            ////Session.Add("tree_node_path", " ");

            //TreeView1.CollapseAll();


            //to calculate new account number

            int id = int.Parse(ViewState["ID"].ToString());
            int count = db.MtsSuplir.Count(o => o.Cmp_No == no && o.Parnt_Sup == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == id).Max(u => u.Sup_No) + 1;
            }
            else
            {

                if (count < 10)
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), "0", count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), "0", count + 1));
                    }
                }
                else
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), count + 1));
                    }
                }
            }
            TextBox14.Text = Convert.ToString(new_id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MtsSuplir cn = new MtsSuplir();
            cn.Sup_NmAr = Convert.ToString(TextBox15.Text);
            cn.Cmp_No = short.Parse(DropDownList4.SelectedValue);

            int p = int.Parse(ViewState["ID"].ToString());
            /// to set level of new node 
            if (p == 0)
            {
                cn.Level_no = 1;
            }
            else
            {
                var result = db.MtsSuplir.Where(o => o.Sup_No == p).SingleOrDefault();
                cn.Level_no = Convert.ToInt16(result.Level_no + 1);
            }
            cn.Sup_No = Convert.ToInt16(TextBox14.Text);
            if (string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue)) { }
            else
                cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);

            cn.Sup_NmAr = TextBox15.Text;
            cn.Sup_NmEn = TextBox2.Text;
            //cn.Sup_Email = TextBox5.Text;
            cn.Tel1 = TextBox6.Text;
            // cn.Sup_Tel = TextBox7.Text;
            // cn.Credit_Value = Convert.ToDecimal(TextBox9.Text);
            // cn.Tel1 = TextBox6.Text;
            // cn.Curncy_No = short.Parse(TextBox13.Text);
            TextBox1.Text = cn.Level_no.ToString();
            //cn.Level_no = short.Parse(TextBox1.Text);
            //cn.Sup_Adr = Convert.ToString(TextBox16.Text);
            //cn.Credit_Days = Convert.ToInt16(TextBox10.Text);
            // if (!string.IsNullOrEmpty(cn.Fbal_CR))
            if (string.IsNullOrEmpty(TextBox11.Text) || string.IsNullOrWhiteSpace(TextBox11.Text)) { }
            else
                cn.Fbal_CR = Convert.ToDecimal(TextBox11.Text);
            if (string.IsNullOrEmpty(TextBox12.Text) || string.IsNullOrWhiteSpace(TextBox12.Text)) { }
            else
                cn.Fbal_Db = Convert.ToDecimal(TextBox12.Text);

            cn.Brn_No = Convert.ToInt32(TextBox26.Text);
            cn.Parnt_Sup = Convert.ToInt16(ViewState["ID"]);

            DropDownList1.SelectedValue = Convert.ToString(cn.SupCtg_No);
            DropDownList2.SelectedValue = Convert.ToString(cn.Cntry_No);
            DropDownList3.SelectedValue = Convert.ToString(cn.Curncy_No);

            long id = 0;
            //int id = int.Parse(TreeView1.SelectedNode.Value);
            //ViewState["id"] = "0";
            var cn1 = db.MtsSuplirOthr.Where(o => o.Sup_No == id).SingleOrDefault();
            if (cn1 != null)
            {
                TextBox22.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn1) ? "" : cn1.Cntct_Prsn1.ToString();
                TextBox30.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn2) ? "" : cn1.Cntct_Prsn2.ToString();
                TextBox31.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn3) ? "" : cn1.Cntct_Prsn3.ToString();
                TextBox35.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn4) ? "" : cn1.Cntct_Prsn4.ToString();
                TextBox36.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn5) ? "" : cn1.Cntct_Prsn5.ToString();
                TextBox23.Text = string.IsNullOrEmpty(cn1.TitL1) ? "" : cn1.TitL1.ToString();
                TextBox37.Text = string.IsNullOrEmpty(cn1.TitL2) ? "" : cn1.TitL2.ToString();
                TextBox38.Text = string.IsNullOrEmpty(cn1.TitL3) ? "" : cn1.TitL3.ToString();
                TextBox39.Text = string.IsNullOrEmpty(cn1.TitL4) ? "" : cn1.TitL4.ToString();
                TextBox40.Text = string.IsNullOrEmpty(cn1.TitL5) ? "" : cn1.TitL5.ToString();
                TextBox24.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email1.ToString();
                TextBox42.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email2.ToString();
                TextBox43.Text = string.IsNullOrEmpty(cn1.Email3) ? "" : cn1.Email3.ToString();
                TextBox44.Text = string.IsNullOrEmpty(cn1.Email4) ? "" : cn1.Email4.ToString();
                TextBox41.Text = string.IsNullOrEmpty(cn1.Email5) ? "" : cn1.Email5.ToString();
                TextBox25.Text = string.IsNullOrEmpty(cn1.Mobile1) ? "" : cn1.Mobile1.ToString();
                TextBox45.Text = string.IsNullOrEmpty(cn1.Mobile2) ? "" : cn1.Mobile2.ToString();
                TextBox46.Text = string.IsNullOrEmpty(cn1.Mobile3) ? "" : cn1.Mobile3.ToString();
                TextBox47.Text = string.IsNullOrEmpty(cn1.Mobile4) ? "" : cn1.Mobile4.ToString();
                TextBox48.Text = string.IsNullOrEmpty(cn1.Mobile5) ? "" : cn1.Mobile5.ToString();
                TextBox60.Text = string.IsNullOrEmpty(cn1.Notes) ? "" : cn1.Notes.ToString();
            }
            else
            {
                TextBox22.Text = "";
                TextBox30.Text = "";
                TextBox31.Text = "";
                TextBox35.Text = "";
                TextBox36.Text = "";
                TextBox23.Text = "";
                TextBox37.Text = "";
                TextBox38.Text = "";
                TextBox39.Text = "";
                TextBox40.Text = "";
                TextBox24.Text = "";
                TextBox42.Text = "";
                TextBox43.Text = "";
                TextBox44.Text = "";
                TextBox41.Text = "";
                TextBox25.Text = "";
                TextBox45.Text = "";
                TextBox46.Text = "";
                TextBox47.Text = "";
                TextBox48.Text = "";
                TextBox60.Text = "";
            }

            //db.MtsSuplirOthr.Add(cn1);
            //db.SaveChanges();

            db.MtsSuplir.Add(cn);
            db.SaveChanges();
            load_tree(/*Convert.ToInt16(ViewState["ID"])*/);
            Response.Redirect("mtssuplir.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)

        {
            Response.Redirect("mtssuplir.aspx");
        }

        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;
            int no = int.Parse(DropDownList4.SelectedValue);

            foreach (MtsSuplir sup in db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == id))
            {
                TreeNode node = new TreeNode(sup.Sup_NmAr.ToString(), sup.Sup_No.ToString());
                if (db.MtsSuplir.Where(o => o.Parnt_Sup == sup.Sup_No && o.Cmp_No == no).Count() > 0)
                    node.PopulateOnDemand = true;
                else
                    node.PopulateOnDemand = false;

                e.Node.ChildNodes.Add(node);
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            //try
            //{

                //Session["tree_node_path"] = TreeView1.SelectedNode.ValuePath;
                int id = int.Parse(TreeView1.SelectedNode.Value);
                ViewState["ID"] = id;
              
                int no = int.Parse(DropDownList4.SelectedValue);
                int count = db.MtsSuplir.Count(o => o.Cmp_No == no && o.Parnt_Sup == id);
                long new_id;
                if (count > 0)
                {
                    new_id = db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == id).Max(u => u.Sup_No) + 1;
                }
                else
                {

                    if (count < 10)
                    {
                        if (id < 10)
                        {
                            new_id = int.Parse(string.Concat("0", id.ToString(), "0", count + 1));
                        }
                        else
                        {
                            new_id = int.Parse(string.Concat(id.ToString(), "0", count + 1));
                        }
                    }
                    else
                    {
                        if (id < 10)
                        {
                            new_id = int.Parse(string.Concat("0", id.ToString(), count + 1));
                        }
                        else
                        {
                            new_id = int.Parse(string.Concat(id.ToString(), count + 1));
                        }
                    }
                }


                TextBox14.Text = Convert.ToString(new_id);

            if (int.Parse(ViewState["ID"].ToString()) == 0)
            {
                TextBox1.Text = (1).ToString();
            }
            else
            {
                int i = int.Parse(ViewState["ID"].ToString());
                var result = db.MtsSuplir.Where(o => o.Sup_No == i).SingleOrDefault();
                TextBox1.Text = (Convert.ToInt16(result.Level_no + 1)).ToString();
            }

            DataSet dataSet = new DataSet("myDataSet");
                dataSet.Tables.Add(new DataTable());

                //Setup the table columns.



                dataSet.Tables[0].Columns.Add("الشهر", typeof(string));
                dataSet.Tables[0].Columns.Add("الحركة مدين", typeof(int));
                dataSet.Tables[0].Columns.Add("الحركة دائن", typeof(int));
                dataSet.Tables[0].Columns.Add("الرصيد الحالي", typeof(int));

                for (int i = 1; i <= 12; i++)
                {
                    var result = db.select_grid_mtssuplier(id, i, no).SingleOrDefault();
                    DataRow row = dataSet.Tables[0].NewRow();
                    row["الشهر"] = result.month == null ? "" : result.month;
                    row["الحركة مدين"] = result.debit == null ? 0 : result.debit;
                    row["الحركة دائن"] = result.credit == null ? 0 : result.credit;
                    row["الرصيد الحالي"] = result.rassid == null ? 0 : result.rassid;

                    dataSet.Tables[0].Rows.Add(row);
                }
                DataRow total = dataSet.Tables[0].NewRow();
                total["الشهر"] = "الإجمالي";
                total["الحركة مدين"] = dataSet.Tables[0].Compute("sum([الحركة مدين])", "");
                total["الحركة دائن"] = dataSet.Tables[0].Compute("sum([الحركة دائن])", "");
                total["الرصيد الحالي"] = dataSet.Tables[0].Compute("sum([الرصيد الحالي])", "");
                dataSet.Tables[0].Rows.Add(total);

                GridView1.DataSource = dataSet.Tables[0];

                GridView1.DataBind();
            }
            //catch { }

        protected void load_tree(/*int id*/)
        {
            TreeView1.Nodes.Clear();

            int no = int.Parse(DropDownList4.SelectedValue);
            foreach (MtsSuplir chart in db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Sup_NmAr.ToString();
                node.Value = chart.Sup_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList4.SelectedValue);

            DropDownList4.DataValueField = "Cmp_No";
            DropDownList4.DataTextField = "Cmp_Nm";
            DropDownList4.DataSource = db.MtsSuplir.Where(o => o.Cmp_No == no).ToList();
            DropDownList4.DataBind();

            load_tree();


            //Session.Add("tree_node_path", " ");
            TreeView1.CollapseAll();
        }
    }
}

