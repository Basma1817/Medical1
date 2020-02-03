using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_chart_ac : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList2.DataValueField = "Costcntr_No";
                DropDownList2.DataTextField = "Costcntr_Nmar";
                DropDownList2.DataSource = db.MtsCostcntr.ToList();
                DropDownList2.DataBind();


                DropDownList3.DataValueField = "CLsacc_No";
                DropDownList3.DataTextField = "CLsacc_NmAr";
                DropDownList3.DataSource = db.MtsClosAcnt.ToList();
                DropDownList3.DataBind();

                ViewState["ID"] = "0";
                TextBox9.Text = (1).ToString();
                
                foreach (MtsChartAc chart in db.MtsChartAc.Where(o => o.Parnt_Acc == 0))
                {
                    TreeNode node = new TreeNode();
                    node.Text = chart.Acc_Nm.ToString();
                    node.Value = chart.Acc_No.ToString();
                    //you can affect the node.NavigateUrl

                    node.PopulateOnDemand = true;
                    TreeView1.Nodes.Add(node);
                }
                //Session.Add("tree_node_path", " ");
                TreeView1.CollapseAll();
               
                int id = int.Parse(ViewState["ID"].ToString());
                int count = db.MtsChartAc.Count(o => o.Parnt_Acc == id);
                long new_id;
                if (count > 0)
                {
                    new_id = db.MtsChartAc.Where(o => o.Parnt_Acc == id).Max(u => u.Acc_No) + 1;
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
                TextBox2.Text = new_id.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ViewState["ID"] = "0";
            TextBox9.Text = (1).ToString();
            int id = int.Parse(ViewState["ID"].ToString());
            int count = db.MtsChartAc.Count(o => o.Parnt_Acc == id);
            int new_id;
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
            TextBox2.Text = new_id.ToString();
        }

        //protected void load_tree(int id)
        //{
        //    TreeView1.Nodes.Clear();
        //    var cn = db.MtsChartAc.Find(id);
        //    ////////// tree view 
        //    TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
        //    foreach (MtsChartAc chart in db.MtsChartAc.Where(o => o.Parnt_Acc == 0))
        //    {
        //        TreeNode node = new TreeNode();
        //        node.Text = chart.Acc_Nm.ToString();
        //        node.Value = chart.Acc_No.ToString();
        //        //you can affect the node.NavigateUrl

            //        node.PopulateOnDemand = true;
            //        TreeView1.Nodes.Add(node);
            //    }
            //}


        protected void Button1_Click(object sender, EventArgs e)
        {

                MtsChartAc cn = new MtsChartAc();
                /// to set level of new node 
                if (int.Parse(ViewState["ID"].ToString())==0)
                {
                    cn.Level_No = 1;
                }
                else
                {
                    int id = int.Parse(ViewState["ID"].ToString());
                    var result = db.MtsChartAc.Where(o=>o.Acc_No==id).SingleOrDefault();
                    cn.Level_No = Convert.ToInt16(result.Level_No + 1);
                }
                cn.Acc_No = long.Parse(TextBox2.Text);
                cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);
                cn.Acc_Nm = TextBox3.Text;
                cn.Acc_NmEng = TextBox4.Text;
                if(CheckBox1.Checked)
                cn.Costcntr_No = Convert.ToInt16(DropDownList2.SelectedValue);
                cn.Clsacc_No1 = Convert.ToInt16(DropDownList3.SelectedValue);
                cn.Acc_Ntr = Convert.ToInt16(RadioButtonList2.SelectedValue);
                 if (string.IsNullOrEmpty(TextBox5.Text)||string.IsNullOrWhiteSpace(TextBox5.Text)) { }
                 else
                 cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
                if (string.IsNullOrEmpty(TextBox6.Text) || string.IsNullOrWhiteSpace(TextBox6.Text)) { }
                else
                cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
                //cn.Parnt_Acc = Convert.ToInt16(TextBox1.Text);
                cn.Parnt_Acc = Convert.ToInt32(ViewState["ID"]);

                db.MtsChartAc.Add(cn);
                db.SaveChanges();
                load_tree(/*Convert.ToInt64( ViewState["ID"])*/);
                //Response.Redirect("chart_ac.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
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
            //try
            //{
                //Session["tree_node_path"] = TreeView1.SelectedNode.ValuePath;
                int id = int.Parse(TreeView1.SelectedNode.Value);
                ViewState["ID"] = id;
                var cn = db.MtsChartAc.Where(o=>o.Acc_No==id).SingleOrDefault();
                TextBox7.Text = cn.Parnt_Acc.ToString();
                if (cn.Parnt_Acc > 0)
                {
                    var parcn = db.MtsChartAc.Where(o => o.Acc_No == cn.Parnt_Acc).SingleOrDefault();
                    TextBox8.Text = parcn.Acc_Nm;
                }
                else
                    TextBox8.Text = string.Empty;

             id = int.Parse(ViewState["ID"].ToString());
            int count = db.MtsChartAc.Count(o => o.Parnt_Acc == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.MtsChartAc.Where(o => o.Parnt_Acc == id).Max(u => u.Acc_No) + 1;
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
                TextBox2.Text = new_id.ToString();

                if (int.Parse(ViewState["ID"].ToString()) == 0)
                {
                    TextBox9.Text = (1).ToString();
                }
                else
                {
                    int i = int.Parse(ViewState["ID"].ToString());
                    var result = db.MtsChartAc.Where(o=>o.Acc_No==i).SingleOrDefault();
                    TextBox9.Text = (Convert.ToInt16(result.Level_No + 1)).ToString();
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
                     var result = db.select_grid(id, i).SingleOrDefault();
                    DataRow row =dataSet.Tables[0].NewRow();
                    row["الشهر"] = result.month == null?"": result.month;
                    row["الحركة مدين"] = result.debit == null?0: result.debit;
                    row["الحركة دائن"] = result.credit ==null?0: result.credit;
                    row["الرصيد الحالي"] = result.rassid == null?0: result.rassid;
                    
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
                //sa.Fill(ds,)
                
                //var cn = db.MtsChartAc.Find(id);

                //TextBox3.Text = cn.Acc_Nm;
                //TextBox1.Text = cn.Acc_No.ToString();
                //ViewState["NAME"] = cn.Acc_Nm;

                //var query = from p in db.MtsChartAc
                //            where p.Acc_No == id
                //            select new
                //            {

                //                مدين = p.Fbal_DB,
                //                دائن = p.Fbal_CR,
                //                اسم_الحساب_انجليزى = p.Acc_NmEng,
                //                اسم_الحساب = p.Acc_Nm,
                //                رقم_الحساب = p.Acc_No
                //            };
                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();


            //}
            //catch(Exception ex)
            //{
            //    string script = "alert("+ex.Message+");";
            //    ScriptManager.RegisterStartupScript(this, GetType(),
            //                          "ServerControlScript", script, true);
            //}
        }

        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            //var cn = db.MtsChartAc.Find(id);
            //////////// tree view 
            //TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
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

    }
}