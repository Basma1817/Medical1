using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class reftypmainupdate : System.Web.UI.Page
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
            foreach (InvAstRefTyp itm in db.InvAstRefTyp.Where(o => o.Prnt_RefTyp == 0 && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.RefTyp_NmAr.ToString();
                node.Value = itm.RefTyp_No.ToString();
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

            var cn = db.InvAstRefTyp.Where(o => o.RefTyp_No == id).SingleOrDefault();

            TextBox2.Text = cn.RefTyp_NmAr.ToString();
            TextBox3.Text = cn.RefTyp_NmEn.ToString();
            TextBox5.Text = cn.Level_no.ToString();
            RadioButtonList2.SelectedValue = cn.Level_Status.ToString();

            TextBox1.Text = cn.RefTyp_No.ToString();
        }


        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (InvAstRefTyp itm in db.InvAstRefTyp.Where(o => o.Prnt_RefTyp == id && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode(itm.RefTyp_NmAr.ToString(), itm.RefTyp_No.ToString());
                if (db.InvAstRefTyp.Where(o => o.Prnt_RefTyp == itm.RefTyp_No && o.Cmp_No == no).Count() > 0)
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





        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }































        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("reftypmain.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


        }

    }
}