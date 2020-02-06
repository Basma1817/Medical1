using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mtsitem_mfs : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();

                int no = int.Parse(DropDownList1.SelectedValue);

                DropDownList2.DataTextField = "Name_Arb";
                DropDownList2.DataValueField = "Actvty_No";
                DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
                DropDownList2.DataBind();
                ViewState["id"] = 0;
                load_tree();
            }

        }




        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            int no = int.Parse(DropDownList1.SelectedValue);
            foreach (MtsItmcatgry itm in db.MtsItmcatgry.Where(o => o.Parnet_Catg == 0 && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.Itm_NmAr.ToString();
                node.Value = itm.Catg_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;


                TreeView1.Nodes.Add(node);
            }

            TreeView1.CollapseAll();
        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            int id = int.Parse(TreeView1.SelectedNode.Value);
            ViewState["id"] = id;

            var cn = db.MtsItmcatgry.Where(o => o.Catg_No == id).SingleOrDefault();

            TextBox2.Text = cn.Itm_NmAr.ToString();
            TextBox3.Text = cn.Itm_NmAr.ToString();
            TextBox5.Text = cn.Level_No.ToString();
            RadioButtonList2.SelectedValue= cn.Level_Status.ToString();
            DropDownList3.SelectedValue = cn.Sup_No.ToString();
            TextBox1.Text = cn.Catg_No.ToString();
        }


        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (MtsItmcatgry itm in db.MtsItmcatgry.Where(o => o.Parnet_Catg == id && o.Cmp_No == no ))
            {
                TreeNode node = new TreeNode(itm.Itm_NmAr.ToString(), itm.Catg_No.ToString());
                if (db.MtsItmcatgry.Where(o => o.Parnet_Catg == itm.Catg_No && o.Cmp_No == no ).Count() > 0)
                    node.PopulateOnDemand = true;
                else
                    node.PopulateOnDemand = false;
                e.Node.ChildNodes.Add(node);
            }


        }



          protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            TextBox26.Text = DropDownList1.SelectedValue;
            int no = int.Parse(DropDownList1.SelectedValue);      
            DropDownList2.DataValueField = "Brn_No";
            DropDownList2.DataTextField = "Brn_NmAr";
            DropDownList2.DataSource = db.MainBranch.Where(o => o.Cmp_No == no).ToList();
            DropDownList2.DataBind();

            load_tree();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {


            int id = int.Parse(ViewState["id"].ToString());
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                string script = "alert(\"لم يتم إختيار عنصر للحذف!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                try
                {
                    var cn = db.MtsItmcatgry.Where(o => o.Catg_No == id).SingleOrDefault();
                    db.MtsItmcatgry.Remove(cn);
                    db.SaveChanges();
                }
                catch { }

                load_tree();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
      

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtsitem.mfs.insert.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TreeView1.SelectedValue == "")
            {
                string script = "alert(\"لم يتم إختيار عنصر للتعديل!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else

                Response.Redirect("mtsitem.mfs.update.aspx");
        }




    }
}