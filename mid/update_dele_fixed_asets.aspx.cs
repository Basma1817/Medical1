using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_dele_fixed_asets : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                TextBox1.Enabled = false;
                DropDownList2.DataValueField = "AsetStat_No";
                DropDownList2.DataTextField = "AsetStat_NmAr";
                DropDownList2.DataSource = db.FixdAstStatus.ToList();
                DropDownList2.DataBind();


                DropDownList3.DataValueField = "Loc_No";
                DropDownList3.DataTextField = "Loc_Nm";
                DropDownList3.DataSource = db.FixdAsetsLoc.ToList();
                DropDownList3.DataBind();


                var id =decimal.Parse(Request.QueryString["no"]);
                var cn = db.MtsFixdAsets.Find(id);
                ViewState.Add("ID", id);
                TextBox1.Text = cn.Aset_No.ToString();
                DropDownList1.SelectedValue = cn.Level_Status.ToString();
                TextBox2.Text = cn.Aset_Nm;
                DropDownList2.SelectedValue = cn.DeprSt_No.ToString();
                TextBox3.Text = string.IsNullOrEmpty(cn.Recp_Dt)?" ": cn.Recp_Dt.ToString();
                TextBox4.Text = cn.Dep_YearPrcnt.ToString();
                TextBox5.Text = cn.Dep_MonthPrcnt.ToString();
                TextBox6.Text = cn.Acc_DB.ToString();
                TextBox7.Text = cn.Acc_CR.ToString();
                TextBox8.Text = cn.AsetCmp_No.ToString();
                TextBox9.Text = cn.Pursh_Value.ToString();
                TextBox10.Text = cn.Book_Value.ToString();
                TextBox11.Text = cn.Pursh_Issue;
                TextBox12.Text = cn.Pursh_Dt;
                TextBox13.Text = cn.Depr_StDt;
                TextBox14.Text = cn.Dep_Mnth1.ToString();
                TextBox15.Text = cn.Dep_Val1.ToString();
                TextBox16.Text = cn.Dep_Mnth3.ToString();
                TextBox17.Text = cn.Dep_Val3.ToString();
                TextBox18.Text = cn.Dep_Mnth2.ToString();
                TextBox19.Text = cn.Dep_Val2.ToString();
                TextBox20.Text = cn.Dep_Mnth4.ToString();
                TextBox21.Text = cn.Dep_Val4.ToString();
                TextBox22.Text = cn.Dep_Mnth5.ToString();
                TextBox23.Text = cn.Dep_Val5.ToString();
                DropDownList3.SelectedValue = cn.Loc_No.ToString();
                TextBox24.Text = cn.Garnt_StDt;
                TextBox25.Text = cn.Garnt_EndDt;
                load_tree(decimal.Parse(ViewState["ID"].ToString()));

            }
            }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = decimal.Parse(ViewState["ID"].ToString());
            try
            {
                
            var cn = db.MtsFixdAsets.Find(id);
            cn.Aset_No=Convert.ToDouble( TextBox1.Text );
            cn.Level_Status=Convert.ToInt16( DropDownList1.SelectedValue);
            cn.Aset_Nm= TextBox2.Text ;
            cn.DeprSt_No=Convert.ToInt16( DropDownList2.SelectedValue);
            cn.Recp_Dt= TextBox3.Text;
            cn.Dep_YearPrcnt=Convert.ToDecimal( TextBox4.Text);
            cn.Dep_MonthPrcnt=Convert.ToDecimal( TextBox5.Text) ;
            cn.Acc_DB=Convert.ToDouble( TextBox6.Text);
            cn.Acc_CR=Convert.ToDouble( TextBox7.Text);
            cn.AsetCmp_No= TextBox8.Text;
            cn.Pursh_Value=Convert.ToDecimal( TextBox9.Text);
            cn.Book_Value=Convert.ToDecimal( TextBox10.Text);
            cn.Pursh_Issue= TextBox11.Text;
            cn.Pursh_Dt= TextBox12.Text;
            cn.Depr_StDt= TextBox13.Text;
            cn.Dep_Mnth1=Convert.ToDecimal( TextBox14.Text);
            cn.Dep_Val1=Convert.ToDecimal( TextBox15.Text);
            cn.Dep_Mnth3=Convert.ToDecimal( TextBox16.Text);
            cn.Dep_Val3=Convert.ToDecimal( TextBox17.Text);
            cn.Dep_Mnth2=Convert.ToDecimal( TextBox18.Text);
            cn.Dep_Val2=Convert.ToDecimal( TextBox19.Text);
            cn.Dep_Mnth4=Convert.ToDecimal( TextBox20.Text);
            cn.Dep_Val4=Convert.ToDecimal( TextBox21.Text);
            cn.Dep_Mnth5=Convert.ToDecimal( TextBox22.Text);
            cn.Dep_Val5=Convert.ToDecimal( TextBox23.Text);
            cn.Loc_No=Convert.ToDouble( DropDownList3.SelectedValue);
            cn.Garnt_StDt= TextBox24.Text;
            cn.Garnt_EndDt= TextBox25.Text;
            db.SaveChanges();
            }
            catch { }
            load_tree(id);
            //Response.Redirect("fixed_asets.aspx");

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            var id = decimal.Parse(Request.QueryString["no"]);
            var cn = db.MtsFixdAsets.Find(id);
            db.MtsFixdAsets.Remove(cn);
            db.SaveChanges();
            Response.Redirect("fixed_asets.aspx");

        }
        protected void Button3_Click(object sender, EventArgs e)
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
            double id = double.Parse(e.Node.Value);
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



                var cn = db.MtsFixdAsets.Find(decimal.Parse(ViewState["ID"].ToString()));

                TextBox1.Text = cn.Aset_No.ToString();
                DropDownList1.SelectedValue = cn.Level_Status.ToString();
                TextBox2.Text = cn.Aset_Nm;
                DropDownList2.SelectedValue = cn.DeprSt_No.ToString();
                TextBox3.Text = string.IsNullOrEmpty(cn.Recp_Dt) ? " " : cn.Recp_Dt.ToString();
                TextBox4.Text = cn.Dep_YearPrcnt.ToString();
                TextBox5.Text = cn.Dep_MonthPrcnt.ToString();
                TextBox6.Text = cn.Acc_DB.ToString();
                TextBox7.Text = cn.Acc_CR.ToString();
                TextBox8.Text = cn.AsetCmp_No.ToString();
                TextBox9.Text = cn.Pursh_Value.ToString();
                TextBox10.Text = cn.Book_Value.ToString();
                TextBox11.Text = cn.Pursh_Issue;
                TextBox12.Text = cn.Pursh_Dt;
                TextBox13.Text = cn.Depr_StDt;
                TextBox14.Text = cn.Dep_Mnth1.ToString();
                TextBox15.Text = cn.Dep_Val1.ToString();
                TextBox16.Text = cn.Dep_Mnth3.ToString();
                TextBox17.Text = cn.Dep_Val3.ToString();
                TextBox18.Text = cn.Dep_Mnth2.ToString();
                TextBox19.Text = cn.Dep_Val2.ToString();
                TextBox20.Text = cn.Dep_Mnth4.ToString();
                TextBox21.Text = cn.Dep_Val4.ToString();
                TextBox22.Text = cn.Dep_Mnth5.ToString();
                TextBox23.Text = cn.Dep_Val5.ToString();
                DropDownList3.SelectedValue = cn.Loc_No.ToString();
                TextBox24.Text = cn.Garnt_StDt;
                TextBox25.Text = cn.Garnt_EndDt;


                load_tree(int.Parse(ViewState["ID"].ToString()));
            }
            catch { }
        }

    }
}