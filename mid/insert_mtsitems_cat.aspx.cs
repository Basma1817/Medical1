using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
     {
       public partial class insert_mtsitems_cat : System.Web.UI.Page
        {
            ICDBTrdAEntities db = new ICDBTrdAEntities();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!Page.IsPostBack)
                {

                    DropDownList1.DataValueField = "Cmp_No";
                    DropDownList1.DataTextField = "Cmp_Nm";
                    DropDownList1.DataSource = db.MainCmpnam.ToList();
                    DropDownList1.DataBind();
                    TextBox26.Text = DropDownList1.SelectedValue;


                    DropDownList2.DataValueField = "Brn_No";
                    DropDownList2.DataTextField = "Brn_NmAr";
                    DropDownList2.DataSource = db.MainBranch.ToList();
                    DropDownList2.DataBind();
                    TextBox22.Text = DropDownList5.SelectedValue;

                    ViewState["ID"] = 0;
                    TextBox60.Text = (1).ToString();
                    load_tree();
                }

            int no = int.Parse(DropDownList1.SelectedValue);
            int id = int.Parse(ViewState["ID"].ToString());
            int count = db.MtsItmMfs.Count(o => o.Cmp_No == no && o.Parent_Itm == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.MtsItmMfs.Where(o => o.Cmp_No == no && o.Parent_Itm == id).Max(u => u.Itm_No) + 1;
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
            TextBox4.Text = Convert.ToString(new_id);
        }

        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (MtsItmMfs itm in db.MtsItmMfs.Where(o => o.Cmp_No == no && o.Parent_Itm == id))
            {
                TreeNode node = new TreeNode(itm.Itm_NmAr.ToString(), itm.Itm_No.ToString());
                if (db.MtsItmMfs.Where(o => o.Parent_Itm == itm.Itm_No && o.Cmp_No == no).Count() > 0)
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

            //DropDownList4.SelectedValue = id.ToString();

            ViewState["ID"] = id;

            int no = int.Parse(DropDownList1.SelectedValue);
            int count = db.MtsItmMfs.Count(o => o.Cmp_No == no && o.Parent_Itm == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.MtsItmMfs.Where(o => o.Cmp_No == no && o.Parent_Itm == id).Max(u => u.Itm_No) + 1;
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
            TextBox4.Text = Convert.ToString(new_id);

            if (int.Parse(ViewState["ID"].ToString()) == 0)
            {
                TextBox60.Text = (1).ToString();
            }
            else
            {
                int i = int.Parse(ViewState["ID"].ToString());
                var result = db.MtsItmMfs.Where(o => o.Itm_No == i).SingleOrDefault();
                TextBox1.Text = (Convert.ToInt16(result.Level_No + 1)).ToString();
            }
            DataSet dataSet = new DataSet("myDataSet");
            dataSet.Tables.Add(new DataTable());
        }

        protected void load_tree()
        {
            TreeView1.Nodes.Clear();

            int no = int.Parse(DropDownList1.SelectedValue);
            foreach (MtsItmMfs itm in db.MtsItmMfs.Where(o => o.Cmp_No == no && o.Parent_Itm == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.Itm_NmAr.ToString();
                node.Value = itm.Itm_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            MtsItmMfs cn = new MtsItmMfs();
            cn.Itm_NmAr = Convert.ToString(TextBox2.Text);
            cn.Cmp_No = short.Parse(DropDownList1.SelectedValue);

            int p = int.Parse(ViewState["ID"].ToString());
            /// to set level of new node 
            if (p == 0)
            {
                cn.Level_No = 1;
            }
            else
            {
                var result = db.MtsItmMfs.Where(o => o.Itm_No == p).SingleOrDefault();
                cn.Level_No = Convert.ToInt16(result.Level_No + 1);
            }
            if (string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue)) { }
            else
                cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);

            cn.Itm_NmAr = TextBox2.Text;
            cn.Itm_NmEn = TextBox3.Text;
            db.MtsItmMfs.Add(cn);
            db.SaveChanges();
            load_tree();
            Response.Redirect("mtsitems_cat.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)

        {
            Response.Redirect("mtsitems_cat.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MtsItmMfs.Where(o => o.Cmp_No == no).ToList();
            DropDownList1.DataBind();

            load_tree();
            
            //Session.Add("tree_node_path", " ");
            TreeView1.CollapseAll();
        }
    }
    }
