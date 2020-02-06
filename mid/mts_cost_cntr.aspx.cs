using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mts_cost_cntr1 : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            try {
                    DropDownList1.DataTextField = "Cmp_Nm";
                    DropDownList1.DataValueField = "Cmp_No";
                    DropDownList1.DataSource = db.MainCmpnam.ToList();
                    DropDownList1.DataBind();
                    ViewState["id"] = 0;
            var query = from p in db.MtsCostcntr
                        select new
                        {
              اول_المده_مدين= p.Fbal_DB,
              اول_المده_دائن = p.Fbal_CR,
              اسم_الحساب = p.Costcntr_Nmar,
              رقم_الحساب = p.Costcntr_No
                        };
                    //GridView1.DataSource = query.ToList();
                    //GridView1.DataBind();

                    ////////// tree view 
                    load_tree();
                }
            catch { }
            }
        }
        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            //var cn = db.MtsChartAc.Find(id);
            //////////// tree view 
            //TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
            int id = int.Parse(DropDownList1.SelectedValue);
            foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o =>o.Cmp_No==id && o.Parnt_Acc == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Costcntr_Nmar.ToString();
                node.Value = chart.Costcntr_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
            TreeView1.CollapseAll();
        }

        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            short no = short.Parse(DropDownList1.SelectedValue);
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsCostcntr costcntr in db.MtsCostcntr.Where(o => o.Cmp_No==no && o.Parnt_Acc == id))
            {
                TreeNode node = new TreeNode(costcntr.Costcntr_Nmar, costcntr.Costcntr_No.ToString());
                node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert_mts_cost_centr.aspx");
            //Response.Redirect("insertasetsloc.aspx");
        }

        //the delete button
        protected void Button6_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('are you sure of delete?{0}')"+db.MtsChartAc.Where(o=>o.Acc_No == int.Parse(ViewState["id"].ToString())).Select(o=>o.Acc_Nm), true);
            int id = int.Parse(ViewState["id"].ToString());
            //string name = db.MtsChartAc.Where(o => o.Acc_No == id).Select(o => o.Acc_Nm).SingleOrDefault();
            //string confirmValue = Request.Form["confirm_value"];
            //if (confirmValue == "Yes")
            //{
            if (id == 0)
            {
                string script = "alert(\"لم يتم إختيار عنصر للحذف!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                try
                {
                    var query = db.MtsCostcntr.Where(o => o.Costcntr_No == id).SingleOrDefault();
                    db.MtsCostcntr.Remove(query);
                    db.SaveChanges();
                }
                catch { }
              
            }
        }

        //the update button 
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (int.Parse(ViewState["id"].ToString()) == 0)
            {
                string script = "alert(\"لم يتم إختيار عنصر للتعديل!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
                Response.Redirect("update_dele_mts_cost_cntr.aspx?no=" + ViewState["id"]);
            //try
            //{
            //    int id = int.Parse(TextBox1.Text);
            //    var query = from p in db.MtsChartAc
            //                where p.Acc_No == id
            //                select new
            //                {

            //                    مدين = p.Fbal_DB,
            //                    دائن = p.Fbal_CR,
            //                    اسم_الحساب_انجليزى = p.Acc_NmEng,
            //                    اسم_الحساب = p.Acc_Nm,
            //                    رقم_الحساب = p.Acc_No
            //                };
            //    GridView1.DataSource = query.ToList();
            //    GridView1.DataBind();
            //}
            //catch { }
        }
        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
        //    {
        //         var query = from p in db.MtsCostcntr
        //                      select new
        //                      {
        //                          اول_المده_مدين = p.Fbal_DB,
        //                          اول_المده_دائن = p.Fbal_CR,
        //                          اسم_الحساب = p.Costcntr_Nmar,
        //                          رقم_الحساب = p.Costcntr_No

        //                      };
        //        GridView1.DataSource = query.ToList();
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        try
        //        {
        //            int id = int.Parse(TextBox1.Text);
        //            var query = from p in db.MtsCostcntr
        //                        where p.Costcntr_No == id
        //                        select new
        //                        {
        //                            اول_المده_مدين = p.Fbal_DB,
        //                            اول_المده_دائن = p.Fbal_CR,
        //                            اسم_الحساب = p.Costcntr_Nmar,
        //                            رقم_الحساب = p.Costcntr_No

        //                        };
        //            GridView1.DataSource = query.ToList();
        //            GridView1.DataBind();
        //        }
        //        catch
        //        {
        //        }
        //    }
        //}
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtscost_centerreport.aspx");
        }
        //protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        //{
        //    int id = int.Parse(e.Node.Value);
        //    //do your "select from yourTable where parentId =" + id;

        //    foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o => o.Parnt_Acc == id))
        //    {
        //        TreeNode node = new TreeNode(chart.Costcntr_Nmar.ToString(), chart.Costcntr_No.ToString());
        //        node.PopulateOnDemand = true;
        //        e.Node.ChildNodes.Add(node);
        //    }
        //}

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            try
            {

                int id = int.Parse(TreeView1.SelectedNode.Value);
                short no = short.Parse(DropDownList1.SelectedValue);
                ViewState["id"] = id;
                var cn = db.MtsCostcntr.Where(o => o.Cmp_No == no && o.Costcntr_No == id).SingleOrDefault();
                TextBox5.Text = cn.Fbal_DB.ToString();

                RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                TextBox6.Text = cn.Fbal_CR.ToString();
                TextBox7.Text = cn.Level_No.ToString();
                DropDownList2.SelectedValue = cn.Costcntr_No.ToString();
                TextBox1.Text = cn.Costcntr_No.ToString();
                TextBox2.Text = cn.Costcntr_Nmar.ToString();
                TextBox3.Text = cn.Costcntr_Nmen.ToString();
                CheckBox1.Checked = cn.Active.Value;

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
                //var query = from p in db.MtsCostcntr
                //            where p.Costcntr_No == id
                //            select new
                //            {

                //                مدين = p.Fbal_DB,
                //                دائن = p.Fbal_CR,
                //                اسم_الحساب_انجليزى = p.Costcntr_Nmen,
                //                اسم_الحساب = p.Costcntr_Nmar,
                //                رقم_الحساب = p.Costcntr_No
                //            };
                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();
            }
            catch { }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            short id = short.Parse(DropDownList1.SelectedValue);



            DropDownList2.DataTextField = "Costcntr_Nmar";
            DropDownList2.DataValueField = "Costcntr_No";
            DropDownList2.DataSource = db.MtsCostcntr.Where(o => o.Cmp_No == id).ToList();
            DropDownList2.DataBind();

            load_tree();
        }
    }
}