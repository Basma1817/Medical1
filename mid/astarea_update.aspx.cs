using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class astarea_update : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                TextBox5.Enabled = false;
                TextBox1.Enabled = false;

                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();


                DropDownList2.DataTextField = "Name_Arb";
                DropDownList2.DataValueField = "Actvty_No";
                DropDownList2.DataSource = db.ActivityTypes.ToList();
                DropDownList2.DataBind();


                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.AstCity.Where(o => o.City_No == id).SingleOrDefault();
                ViewState.Add("id", id);

                TextBox2.Text = cn.City_NmAR.ToString();
                TextBox3.Text = cn.City_NmEN.ToString();
                TextBox5.Text = cn.Level_no.ToString();
                TextBox1.Text = cn.City_No.ToString();

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
            DropDownList3.SelectedValue = cn.Cntry_No.ToString();
            TextBox1.Text = cn.City_No.ToString();


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


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                var id = int.Parse(Request.QueryString["no"]);
                var cn = (from p in db.AstCity
                          where p.City_No == id
                          select p).SingleOrDefault();
                if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrWhiteSpace(TextBox1.Text))
                    cn.City_No = Convert.ToInt16(TextBox1.Text);
                if (!string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrWhiteSpace(TextBox2.Text))
                    cn.City_NmAR = TextBox2.Text;
                if (!string.IsNullOrEmpty(TextBox3.Text) || !string.IsNullOrWhiteSpace(TextBox3.Text))
                    cn.City_NmEN = TextBox3.Text;

                if (!string.IsNullOrEmpty(TextBox5.Text) || !string.IsNullOrWhiteSpace(TextBox5.Text))
                    cn.Level_no = Convert.ToInt16(TextBox5.Text);
                if (!string.IsNullOrEmpty(RadioButtonList2.SelectedValue) || !string.IsNullOrWhiteSpace(RadioButtonList2.SelectedValue))
                    RadioButtonList2.SelectedValue = cn.Level_Status.ToString();

                if (!string.IsNullOrEmpty(DropDownList3.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList3.SelectedValue))
                    DropDownList3.SelectedValue = Convert.ToString(cn.Cntry_No);

                db.SaveChanges();
                Response.Redirect("astarea.aspx");
            }

            catch
            {

            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("astarea.aspx");
        }


    }
}