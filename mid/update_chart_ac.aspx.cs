using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_chart_ac : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {
                TextBox2.Enabled = false;
                DropDownList2.DataValueField = "Costcntr_No";
                DropDownList2.DataTextField = "Costcntr_Nmar";
                DropDownList2.DataSource = db.MtsCostcntr.ToList();
                DropDownList2.DataBind();


                DropDownList3.DataValueField = "CLsacc_No";
                DropDownList3.DataTextField = "CLsacc_NmAr";
                DropDownList3.DataSource = db.MtsClosAcnt.ToList();
                DropDownList3.DataBind();


                int id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsChartAc.Where(o=>o.Acc_No==id).SingleOrDefault();
                ViewState.Add("ID", id);
                //TextBox1.Text = cn.Acc_No.ToString();
                TextBox2.Text = cn.Acc_No.ToString();
                RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                TextBox3.Text = cn.Acc_Nm;
                TextBox4.Text = cn.Acc_NmEng;
                DropDownList2.SelectedValue = cn.Costcntr_No.ToString();
                DropDownList3.SelectedValue = cn.Clsacc_No1.ToString();
                RadioButtonList2.SelectedValue = cn.Acc_Ntr.ToString();
                TextBox5.Text = cn.Fbal_DB.ToString();
                TextBox6.Text = cn.Fbal_CR.ToString();
                TextBox9.Text = cn.Level_No.ToString();
                
                TextBox7.Text = cn.Parnt_Acc.ToString();
                if (cn.Parnt_Acc > 0)
                {
                    var parcn = db.MtsChartAc.Where(o=>o.Acc_No == cn.Parnt_Acc).SingleOrDefault();
                    TextBox8.Text = parcn.Acc_Nm;
                }
                else
                    TextBox8.Text = string.Empty;
                /////load tree
                DataSet dataSet = new DataSet("myDataSet");
                dataSet.Tables.Add(new DataTable());

                //Setup the table columns.


                dataSet.Tables[0].Columns.Add("الشهر", typeof(string));
                dataSet.Tables[0].Columns.Add("الحركة مدين", typeof(int));
                dataSet.Tables[0].Columns.Add("الحركة دائن", typeof(int));
                dataSet.Tables[0].Columns.Add("الرصيد الحالي", typeof(int));

                for (int i = 1; i <= 12; i++)
                {
                    var result = db.select_grid(id, i).SingleOrDefault();
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
                //var nod = TreeView1.Nodes.IndexOf()
                //if (string.IsNullOrEmpty(Session["tree_node_path"].ToString()))
                //{
                //    TreeView1.CollapseAll();
                //}
                //else
                //{
                //    TreeView1.FindNode(Session["tree_node_path"].ToString()).Expand();
                //}
                //TreeView1.FindNode()

                load_tree(/*int.Parse(ViewState["ID"].ToString())*/);

            }
            //else
            //{
            //    //id = int.Parse(Request.QueryString["no"]);
            //    load_tree(int.Parse(ViewState["ID"].ToString()));

            //}


        }


        protected void load_tree(/*Int64 id*/)
        {
            TreeView1.Nodes.Clear();
            //var cn = db.MtsChartAc.Find(id);
            ////////// tree view 
            // TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
            foreach (MtsChartAc chart in db.MtsChartAc.Where(o => o.Parnt_Acc == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Acc_Nm.ToString();
                node.Value = chart.Acc_No.ToString();
                //you can affect the node.NavigateUrl
                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = int.Parse(ViewState["ID"].ToString());
            try
            {
                var cn = db.MtsChartAc.Where(o => o.Acc_No == id).SingleOrDefault();

                cn.Acc_No = Convert.ToInt64(TextBox2.Text);
                cn.Level_No = Convert.ToInt16(TextBox2.Text);
                cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);
                cn.Acc_Nm = TextBox3.Text;
                cn.Acc_NmEng = TextBox4.Text;
                if (CheckBox1.Checked)
                    cn.Costcntr_No = Convert.ToInt16(DropDownList2.SelectedValue);
                cn.Clsacc_No1 = Convert.ToInt16(DropDownList3.SelectedValue);
                cn.Acc_Ntr = Convert.ToInt16(RadioButtonList2.SelectedValue);
                if (string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrWhiteSpace(TextBox5.Text)) { }
                else
                    cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
                if (string.IsNullOrEmpty(TextBox6.Text) || string.IsNullOrWhiteSpace(TextBox6.Text)) { }
                else
                    cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
                db.SaveChanges();
                
                //Response.Redirect("chart_ac.aspx");
            }
            catch { }
            load_tree(/*id*/);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                var id = int.Parse(ViewState["ID"].ToString());
                var cn = db.MtsChartAc.Where(o=>o.Acc_No == id).SingleOrDefault();
                db.MtsChartAc.Remove(cn);
                db.SaveChanges();
                //Response.Redirect("chart_ac.aspx");
            }
            catch { }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("chart_ac.aspx");
        }
        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsChartAc chart in db.MtsChartAc.Where(o => o.Parnt_Acc == id))
            {
                TreeNode node = new TreeNode(chart.Acc_Nm.ToString(), chart.Acc_No.ToString());
                node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            if (TreeView1.SelectedNode != null)
            {

                ViewState["ID"] = TreeView1.SelectedNode.Value;
                int id = int.Parse(TreeView1.SelectedNode.Value);
                var cn = db.MtsChartAc.Where(o=>o.Acc_No == id ).SingleOrDefault();
                TextBox7.Text = cn.Parnt_Acc.ToString();
                if (cn.Parnt_Acc > 0)
                {
                    var parcn = db.MtsChartAc.Where(o=>o.Acc_No == cn.Parnt_Acc).SingleOrDefault();
                    TextBox8.Text = parcn.Acc_Nm;
                }
                else
                    TextBox8.Text = string.Empty;
            }
            //}
            try
                {
                //DropDownList2.DataValueField = "Costcntr_No";
                //DropDownList2.DataTextField = "Costcntr_Nmar";
                //DropDownList2.DataSource = db.MtsCostcntr.ToList();
                //DropDownList2.DataBind();


                //DropDownList3.DataValueField = "CLsacc_No";
                //DropDownList3.DataTextField = "CLsacc_NmAr";
                //DropDownList3.DataSource = db.MtsClosAcnt.ToList();
                //DropDownList3.DataBind();


                    int id = int.Parse(ViewState["ID"].ToString());
                    var cn = db.MtsChartAc.Where(o=>o.Acc_No==id).SingleOrDefault();

                    TextBox2.Text = cn.Acc_No.ToString();
                    //TextBox2.Text = cn.Level_No.ToString();
                    RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                    TextBox3.Text = cn.Acc_Nm;
                    TextBox4.Text = cn.Acc_NmEng;
                    DropDownList2.SelectedValue = cn.Costcntr_No.ToString();
                    DropDownList3.SelectedValue = cn.Clsacc_No1.ToString();
                    RadioButtonList2.SelectedValue = cn.Acc_Ntr.ToString();
                    TextBox5.Text = cn.Fbal_DB.ToString();
                    TextBox6.Text = cn.Fbal_CR.ToString();
                    TextBox9.Text = cn.Level_No.ToString();


                DataSet dataSet = new DataSet("myDataSet");
                dataSet.Tables.Add(new DataTable());

                //Setup the table columns.


                dataSet.Tables[0].Columns.Add("الشهر", typeof(string));
                dataSet.Tables[0].Columns.Add("الحركة مدين", typeof(int));
                dataSet.Tables[0].Columns.Add("الحركة دائن", typeof(int));
                dataSet.Tables[0].Columns.Add("الرصيد الحالي", typeof(int));

                for (int i = 1; i <= 12; i++)
                {
                    var result = db.select_grid(id, i).SingleOrDefault();
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
                load_tree(/*int.Parse(ViewState["ID"].ToString())*/);
            }
                catch { }
        }

    
    }
}