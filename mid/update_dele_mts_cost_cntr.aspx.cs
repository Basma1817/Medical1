using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_dele_mts_cost_cntr : System.Web.UI.Page
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
                ViewState["id"] = 0;

                int no = int.Parse(DropDownList1.SelectedValue);

                DropDownList2.DataTextField = "Name_Arb";
                DropDownList2.DataValueField = "Actvty_No";
                DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
                DropDownList2.DataBind();
                ViewState["id"] = 0;

                TextBox1.Enabled = false;
                DropDownList3.DataValueField = "Costcntr_No";
                DropDownList3.DataTextField = "Costcntr_Nmar";
                DropDownList3.DataSource = db.MtsCostcntr.ToList();
                DropDownList3.DataBind();
                var id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsCostcntr.Where(o => o.Costcntr_No == id).SingleOrDefault();
                ViewState.Add("ID", id);
                TextBox1.Text = cn.Costcntr_No.ToString();
                DropDownList1.SelectedValue = cn.Level_Status.ToString();
                DropDownList2.SelectedValue = cn.Costcntr_No.ToString();
                TextBox2.Text = cn.Costcntr_Nmar;
                TextBox3.Text = cn.Costcntr_Nmen;
                TextBox4.Text = cn.Level_No.ToString();
                TextBox5.Text = cn.Fbal_DB.ToString();
                TextBox6.Text = cn.Fbal_CR.ToString();


                load_tree(int.Parse(ViewState["ID"].ToString()));

            }
        }
        protected void load_tree(int id)
        {
            TreeView1.Nodes.Clear();
            var cn = db.MtsCostcntr.Where(o => o.Costcntr_No == id).SingleOrDefault(); ;
            ////////// tree view 
            TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
            foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o => o.Parnt_Acc == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Costcntr_Nmar.ToString();
                node.Value = chart.Costcntr_No.ToString();
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

               
                var cn = db.MtsCostcntr.Find(id);
                cn.Costcntr_No = Convert.ToInt16(TextBox1.Text);
                cn.Level_Status = Convert.ToInt16(DropDownList1.SelectedValue);
                cn.Costcntr_No = Convert.ToInt32(DropDownList2.SelectedValue);
                cn.Costcntr_Nmar = TextBox2.Text;
                cn.Costcntr_Nmen = TextBox3.Text;
                cn.Level_No = Convert.ToInt16(TextBox4.Text);
                cn.Fbal_DB = Convert.ToDecimal(TextBox5.Text);
                cn.Fbal_CR = Convert.ToDecimal(TextBox6.Text);
                db.SaveChanges();
                //Response.Redirect("mts_cost_cntr.aspx");
            }
            catch { }
            load_tree(id);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                var id = int.Parse(ViewState["ID"].ToString());
                var cn = db.MtsCostcntr.Find(id);
                db.MtsCostcntr.Remove(cn);
                db.SaveChanges();
                //Response.Redirect("mts_cost_cntr.aspx");
            }
            catch { }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("mts_cost_cntr.aspx");

        }
        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsCostcntr chart in db.MtsCostcntr.Where(o => o.Parnt_Acc == id))
            {
                TreeNode node = new TreeNode(chart.Costcntr_Nmar.ToString(), chart.Costcntr_No.ToString());
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



                var cn = db.MtsCostcntr.Find(int.Parse(ViewState["ID"].ToString()));

                TextBox1.Text = cn.Costcntr_No.ToString();
                DropDownList1.SelectedValue = cn.Level_Status.ToString();
                DropDownList2.SelectedValue = cn.Costcntr_No.ToString();
                TextBox2.Text = cn.Costcntr_Nmar;
                TextBox3.Text = cn.Costcntr_Nmen;
                TextBox4.Text = cn.Level_No.ToString();
                TextBox5.Text = cn.Fbal_DB.ToString();
                TextBox6.Text = cn.Fbal_CR.ToString();


                load_tree(int.Parse(ViewState["ID"].ToString()));
            }
            catch { }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            short id = short.Parse(DropDownList1.SelectedValue);



            DropDownList3.DataTextField = "Costcntr_Nmar";
            DropDownList3.DataValueField = "Costcntr_No";
            DropDownList3.DataSource = db.MtsCostcntr.Where(o => o.Cmp_No == id).ToList();
            DropDownList3.DataBind();

            //load_tree();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);

            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList1.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}