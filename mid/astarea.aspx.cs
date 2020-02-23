using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
	public partial class astarea : System.Web.UI.Page
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
            foreach (AstCity itm in db.AstCity.Where(o => o.Prnt_City == 0 && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.City_NmAR.ToString();
                node.Value = itm.City_No.ToString();
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

            var cn = db.AstCity.Where(o => o.City_No == id).SingleOrDefault();

            TextBox2.Text = cn.City_NmAR.ToString();
            TextBox3.Text = cn.City_NmEN.ToString();
            TextBox5.Text = cn.Level_no.ToString();
            RadioButtonList2.SelectedValue = cn.Level_Status.ToString();
          
            TextBox1.Text = cn.City_No.ToString();
            TextBox16.Text = cn.Brn_No.ToString();
            TextBox5.Text = cn.Level_no.ToString();

            DropDownList3.DataTextField = "cntry_Nm";
            DropDownList3.DataValueField = "cntry_No";
            DropDownList3.DataSource = db.InvAstCntry.ToList();
            DropDownList3.DataBind();
        }


        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (AstCity itm in db.AstCity.Where(o => o.Prnt_City == id && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode(itm.City_NmAR.ToString(), itm.City_No.ToString());
                if (db.AstCity.Where(o => o.Prnt_City == itm.City_No && o.Cmp_No == no).Count() > 0)
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

        //protected void Button4_Click(object sender, EventArgs e)
        //{


        //    int id = int.Parse(ViewState["id"].ToString());
        //    if (string.IsNullOrEmpty(TextBox1.Text))
        //    {
        //        string script = "alert(\"لم يتم إختيار عنصر للحذف!\");";
        //        ScriptManager.RegisterStartupScript(this, GetType(),
        //                              "ServerControlScript", script, true);
        //    }
        //    else
        //    {
        //        try
        //        {
        //            var cn = db.AstCity.Where(o => o.City_No == id).SingleOrDefault();
        //            db.AstCity.Remove(cn);
        //            db.SaveChanges();
        //        }
        //        catch { }

        //        load_tree();
        //    }
        //}
        protected void Button3_Click(object sender, EventArgs e)
        {

        }


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_astarea.aspx");
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

                Response.Redirect("astarea_update.aspx?no="+TextBox1.Text);
        }

    }


}
