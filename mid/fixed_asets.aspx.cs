using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class fixed_asets : System.Web.UI.Page
    {

        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();


            if (!IsPostBack)
            {
                try { 
                var query = from p in db.MtsFixdAsets
                            // where p.Actvty_No == id
                        select new
                        {
                      
                    
                    
                           التاريخ= p.Garnt_StDt,
                           بيان_للاصل_ = p.Aset_NmEn,
                            بيان_الاصل=p.Aset_Nm,
                           رقم_الاصل= p.Aset_No
                        };
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();


                foreach (MtsFixdAsets chart in db.MtsFixdAsets.Where(o => o.Parnt_Acc == 0))
                {
                    TreeNode node = new TreeNode();
                    node.Text = chart.Aset_Nm.ToString();
                    node.Value = chart.Aset_No.ToString();
                    //you can affect the node.NavigateUrl

                    node.PopulateOnDemand = true;
                    TreeView1.Nodes.Add(node);
                }
                //Session.Add("tree_node_path", " ");
                TreeView1.CollapseAll();

                }
                catch { }
        }
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.MtsFixdAsets
                            where p.Aset_No == id
                            select new
                            {
                                التاريخ = p.Garnt_StDt,
                                بيان_للاصل_ = p.Aset_NmEn,
                                بيان_الاصل = p.Aset_Nm,
                                رقم_الاصل = p.Aset_No

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch
            {

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert_fixed_asets.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                try
                {
                    var query = from p in db.MtsFixdAsets
                                    // where p.Actvty_No == id
                                select new
                                {



                                    التاريخ = p.Garnt_StDt,
                                    بيان_للاصل_ = p.Aset_NmEn,
                                    بيان_الاصل = p.Aset_Nm,
                                    رقم_الاصل = p.Aset_No
                                };
                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();
                }
                catch
                {

                }
            }
            else
            {
                int id = int.Parse(TextBox1.Text);
                var query = from p in db.MtsFixdAsets
                            where p.Aset_No == id
                            select new
                            {
                                التاريخ = p.Garnt_StDt,
                                بيان_للاصل_ = p.Aset_NmEn,
                                بيان_الاصل = p.Aset_Nm,
                                رقم_الاصل = p.Aset_No

                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }
        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsFixdAsets chart in db.MtsFixdAsets.Where(o => o.Parnt_Acc == id))
            {
                TreeNode node = new TreeNode(chart.Aset_Nm.ToString(), chart.Aset_No.ToString());
                node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            try
            {
                //Session["tree_node_path"] = TreeView1.SelectedNode.ValuePath;
                double id = double.Parse(TreeView1.SelectedNode.Value);

                var query = from p in db.MtsFixdAsets
                            where p.Aset_No == id
                            select new
                            {
                                التاريخ = p.Garnt_StDt,
                                بيان_للاصل_ = p.Aset_NmEn,
                                بيان_الاصل = p.Aset_Nm,
                                رقم_الاصل = p.Aset_No
                            };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            catch { }
        }

    }
}