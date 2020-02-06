using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class insert_fixed_asets : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DropDownList2.DataValueField = "AsetStat_No";
                DropDownList2.DataTextField = "AsetStat_NmAr";
                DropDownList2.DataSource = db.FixdAstStatus.ToList();
                DropDownList2.DataBind();


                DropDownList3.DataValueField = "Loc_No";
                DropDownList3.DataTextField = "Loc_Nm";
                DropDownList3.DataSource = db.FixdAsetsLoc.ToList();
                DropDownList3.DataBind();

                ViewState["ID"] = "0";



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

        }
            
        protected void Button1_Click(object sender, EventArgs e)
        {

            MtsFixdAsets cn = new MtsFixdAsets();
            /// to set level of new node 
            if (int.Parse(ViewState["ID"].ToString()) == 0)
            {
                cn.Level_No = 1;
            }
            else
            {
                var result = db.MtsFixdAsets.Find(ViewState["ID"]);
                cn.Level_No = Convert.ToInt16(result.Level_No + 1);
            }
            cn.Parnt_Acc = Convert.ToDouble(ViewState["ID"].ToString());
           cn. Level_Status = Convert.ToInt16(DropDownList1.SelectedValue);
          cn.  Aset_Nm = TextBox2.Text;
          cn.  DeprSt_No = Convert.ToInt16(DropDownList2.SelectedValue);
          cn.  Recp_Dt = TextBox3.Text;
          cn.  Dep_YearPrcnt = Convert.ToDecimal(TextBox4.Text);
          cn.  Dep_MonthPrcnt = Convert.ToDecimal(TextBox5.Text);
          cn.  Acc_DB = Convert.ToDouble(TextBox6.Text);
          cn.  Acc_CR = Convert.ToDouble(TextBox7.Text);
          cn.  AsetCmp_No = TextBox8.Text;
          cn.  Pursh_Value = Convert.ToDecimal(TextBox9.Text);
          cn.  Book_Value = Convert.ToDecimal(TextBox10.Text);
          cn.  Pursh_Issue = TextBox11.Text;
          cn.  Pursh_Dt = TextBox12.Text;
          cn.  Depr_StDt = TextBox13.Text;
          cn.  Dep_Mnth1 = Convert.ToDecimal(TextBox14.Text);
          cn.  Dep_Val1 = Convert.ToDecimal(TextBox15.Text);
          cn.  Dep_Mnth3 = Convert.ToDecimal(TextBox16.Text);
          cn.  Dep_Val3 = Convert.ToDecimal(TextBox17.Text);
          cn. Dep_Mnth2 = Convert.ToDecimal(TextBox18.Text);
          cn.  Dep_Val2 = Convert.ToDecimal(TextBox19.Text);
           cn. Dep_Mnth4 = Convert.ToDecimal(TextBox20.Text);
           cn. Dep_Val4 = Convert.ToDecimal(TextBox21.Text);
           cn. Dep_Mnth5 = Convert.ToDecimal(TextBox22.Text);
           cn. Dep_Val5 = Convert.ToDecimal(TextBox23.Text);
          cn.  Loc_No = Convert.ToDouble(DropDownList3.SelectedValue);
          cn.  Garnt_StDt = TextBox24.Text;
          cn.  Garnt_EndDt = TextBox25.Text;
            db.MtsFixdAsets.Add(cn);
            db.SaveChanges();
            load_tree(Convert.ToDecimal(ViewState["ID"]));
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("fixed_asets.aspx");
        }
        protected void load_tree(decimal id)
        {
            TreeView1.Nodes.Clear();
            var cn = db.MtsFixdAsets.Find(id);
            ////////// tree view 
            TreeView1.ExpandDepth = int.Parse(cn.Level_No.ToString()) - 1;
            foreach (MtsFixdAsets chart in db.MtsFixdAsets.Where(o => o.Parnt_Acc == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = chart.Aset_Nm.ToString();
                node.Value = chart.Aset_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
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
                int id = int.Parse(TreeView1.SelectedNode.Value);
                //var cn = db.MtsChartAc.Find(id);

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
            }
            catch { }
        }
    }

}