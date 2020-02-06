using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_mts_cost_centr : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataTextField = "Cmp_NmAr";
                DropDownList1.DataSource = db.AstCompany.ToList();
                DropDownList1.DataBind();




                int no = int.Parse(DropDownList1.SelectedValue);
                DropDownList2.DataValueField = "Costcntr_No";
                DropDownList2.DataTextField = "Costcntr_Nmar";
                DropDownList2.DataSource = db.MtsCostcntr.Where(o=>o.Cmp_No==no).ToList();
                DropDownList2.DataBind();

                ViewState["ID"] = "0";

                foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o =>o.Cmp_No==no && o.Parnt_Acc == 0))
                {
                    TreeNode node = new TreeNode();
                    node.Text = chart.Costcntr_Nmar.ToString();
                    node.Value = chart.Costcntr_No.ToString();
                    //you can affect the node.NavigateUrl

                    node.PopulateOnDemand = true;
                    TreeView1.Nodes.Add(node);
                }
                //Session.Add("tree_node_path", " ");

               TreeView1.CollapseAll();


                //to calculate new account number
                int id = int.Parse(ViewState["ID"].ToString());
                int count = db.MtsCostcntr.Count(o => o.Cmp_No == no && o.Parnt_Acc == id);
                long new_id;
                if (count > 0)
                {
                    new_id = db.MtsCostcntr.Where(o => o.Cmp_No == no && o.Parnt_Acc == id).Max(u => u.Costcntr_No) + 1;
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
                TextBox1.Text = Convert.ToString(new_id);
            }
            CheckBox1.Checked = true;


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            MtsCostcntr cn = new MtsCostcntr();
            /// رقم الحساب
            cn.Costcntr_No = Convert.ToInt32(TextBox1.Text);
            cn.Cmp_No = short.Parse(DropDownList1.SelectedValue);
            int p = int.Parse(ViewState["ID"].ToString());
            /// to set level of new node 
            if (p == 0)
            {
                cn.Level_No = 1;
            }
            else
            {
                var result = db.MtsCostcntr.Where(o=>o.Costcntr_No ==p).SingleOrDefault();   
                cn.Level_No = Convert.ToInt16(result.Level_No + 1);
            }

            cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);
           
            cn.Costcntr_Nmar = TextBox2.Text;
            cn.Costcntr_Nmen = TextBox3.Text;
            cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
            cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
            cn.Parnt_Acc = Convert.ToInt16(ViewState["ID"]);
            TextBox7.Text = cn.Level_No.ToString();

            db.MtsCostcntr.Add(cn);
            db.SaveChanges();
            load_tree(/*Convert.ToInt16(ViewState["ID"])*/);




            //if (int.Parse(ViewState["ID"].ToString()) == 0)
            //{
            // cn.Level_No = 1;
            // cn.Level_Status = Convert.ToInt16(DropDownList1.SelectedValue);
            // cn.Costcntr_No = Convert.ToInt32(DropDownList2.SelectedValue);
            // cn.Costcntr_Nmar = TextBox2.Text;
            // cn.Costcntr_Nmen = TextBox3.Text;
            // cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
            // cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
            // cn.Parnt_Acc = Convert.ToInt16(ViewState["ID"]);
            // db.MtsCostcntr.Add(cn);
            // db.SaveChanges();
            //}
            //else
            //{

            // if (cn.Level_Status == 1)
            // {
            //     var result = db.MtsCostcntr.Find(ViewState["ID"]);
            //     cn.Level_No = Convert.ToInt16(result.Level_No + 1);
            //     cn.Level_Status = Convert.ToInt16(DropDownList1.SelectedValue);
            //     cn.Costcntr_No = Convert.ToInt32(DropDownList2.SelectedValue);
            //     cn.Costcntr_Nmar = TextBox2.Text;
            //     cn.Costcntr_Nmen = TextBox3.Text;
            //     cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
            //     cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
            //     cn.Parnt_Acc = Convert.ToInt16(ViewState["ID"]);
            //     db.MtsCostcntr.Add(cn);
            //     db.SaveChanges();
            // }
            // else
            // {

            // }
       




                //Response.Redirect("mts_cost_cntr.aspx");
                load_tree(/*Convert.ToInt16(ViewState["ID"])*/);
        
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("mts_cost_cntr.aspx");
        }
        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o =>o.Cmp_No==no && o.Parnt_Acc == id))
            {
                TreeNode node = new TreeNode(chart.Costcntr_Nmar.ToString(), chart.Costcntr_No.ToString());
                node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }

            
        
    }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            try
            {
                //Session["tree_node_path"] = TreeView1.SelectedNode.ValuePath;
                int id = int.Parse(TreeView1.SelectedNode.Value);
                //var cn = db.MtsChartAc.Find(id);
                DropDownList2.SelectedValue = id.ToString();
                
                //TextBox3.Text = cn.Acc_Nm;
                //TextBox1.Text = cn.Acc_No.ToString();
                //ViewState["NAME"] = cn.Acc_Nm;
                ViewState["ID"] = id;
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

                //to calculate new account number
                //int id = int.Parse(ViewState["ID"].ToString());
                int no = int.Parse(DropDownList1.SelectedValue);
                int count = db.MtsCostcntr.Count(o => o.Cmp_No == no && o.Parnt_Acc == id);
                long new_id;
                if (count > 0)
                {
                    new_id = db.MtsCostcntr.Where(o => o.Cmp_No == no && o.Parnt_Acc == id).Max(u => u.Costcntr_No) + 1;
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
                TextBox1.Text = Convert.ToString(new_id);
                

                DataSet dataSet = new DataSet("myDataSet");
                dataSet.Tables.Add(new DataTable());

                //Setup the table columns.



                dataSet.Tables[0].Columns.Add("الشهر", typeof(string));
                dataSet.Tables[0].Columns.Add("الحركة مدين", typeof(int));
                dataSet.Tables[0].Columns.Add("الحركة دائن", typeof(int));
                dataSet.Tables[0].Columns.Add("الرصيد الحالي", typeof(int));

                for (int i = 1; i <= 12; i++)
                {
                    var result = db.select_grid_costcntr(id, i, no).SingleOrDefault();
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
            catch { }
        }

        protected void load_tree(/*int id*/)
        {
            TreeView1.Nodes.Clear();
            //if (id <= 0)
            //{
            //}
            //else
            //{ 
            //    var cn = db.MtsCostcntr.Find(id);
            //    ////////// tree view 
            //    TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
            //}
            int no = int.Parse(DropDownList1.SelectedValue);
            foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o => o.Cmp_No==no && o.Parnt_Acc == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Costcntr_Nmar.ToString();
                node.Value = chart.Costcntr_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList2.DataValueField = "Costcntr_No";
            DropDownList2.DataTextField = "Costcntr_Nmar";
            DropDownList2.DataSource = db.MtsCostcntr.Where(o => o.Cmp_No == no).ToList();
            DropDownList2.DataBind();

            load_tree();


            //Session.Add("tree_node_path", " ");
            TreeView1.CollapseAll();
        }
    }
}