using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_mts_suplier : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "";
            if (!Page.IsPostBack)
            {
                TextBox14.Enabled = false;
                TextBox1.Enabled = false;


                TextBox1.Enabled = false;
                TextBox14.Enabled = false;
                DropDownList4.DataValueField = "Cmp_No";
                DropDownList4.DataTextField = "Cmp_Nm";
                DropDownList4.DataSource = db.MainCmpnam.ToList();
                DropDownList4.DataBind();
                TextBox28.Text = DropDownList4.SelectedValue;


                //DropDownList5.DataValueField = "Name_Arb";
                //DropDownList5.DataTextField = "Actvty_No";
                //DropDownList5.DataSource = db.ActivityTypes.Where(o => o.cmp_no == int.Parse(DropDownList1.SelectedValue)).ToList();
                //DropDownList5.DataBind();
                //TextBox26.Text = DropDownList5.SelectedValue;


                int id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsSuplir.Where(o => o.Sup_No == id).SingleOrDefault();
                ViewState.Add("id", id);

                TextBox14.Text = cn.Sup_No.ToString();
                TextBox15.Text = cn.Sup_NmAr;
                TextBox1.Text = cn.Level_no.ToString();
                TextBox2.Text = cn.Sup_NmEn.ToString();
                //TextBox3.Text = cn.Sup_Rsp;
                //TextBox4.Text = cn.Sup_Othr;
                //TextBox5.Text = cn.Sup_Email;
                if (!string.IsNullOrEmpty(cn.Tel1))
                    TextBox6.Text = cn.Tel1.ToString();
                if (!string.IsNullOrEmpty(cn.Sup_Tel))
                    TextBox7.Text = cn.Sup_Tel;
                TextBox8.Text = cn.Sup_Mobile;
                TextBox9.Text = cn.Credit_Value.ToString();
                TextBox10.Text = cn.Credit_Days.ToString();
                TextBox12.Text = cn.Fbal_Db.ToString();
                TextBox11.Text = cn.Fbal_CR.ToString();
                //TextBox13.Text = cn.Curncy_No.ToString();
                DropDownList2.SelectedValue = cn.SupCtg_No.ToString();
                DropDownList3.SelectedValue = cn.Cntry_No.ToString();
                DropDownList1.SelectedValue = cn.Curncy_No.ToString();
                load_tree();
            }
        }
        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            int no = int.Parse(DropDownList4.SelectedValue);
            foreach (MtsSuplir sup in db.MtsSuplir.Where(o => o.Cmp_No == no && o.Parnt_Sup == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = sup.Sup_NmAr.ToString();
                node.Value = sup.Sup_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
            TreeView1.CollapseAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            var id = int.Parse(Request.QueryString["no"]);
                var cn = (from p in db.MtsSuplir
                            where p.Sup_No == id
                            select p).SingleOrDefault();
                //var cn = db.MtsSuplir.Find(id);
                if (!string.IsNullOrEmpty(TextBox14.Text) || !string.IsNullOrWhiteSpace(TextBox14.Text))
                    cn.Sup_No=Convert.ToInt16( TextBox14.Text) ;
                if (!string.IsNullOrEmpty(TextBox15.Text) || !string.IsNullOrWhiteSpace(TextBox15.Text))
                    cn.Sup_NmAr=TextBox15.Text;
                if (!string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrWhiteSpace(TextBox2.Text))
                    cn.Sup_NmEn= TextBox2.Text;
                if (!string.IsNullOrEmpty(TextBox16.Text) || !string.IsNullOrWhiteSpace(TextBox16.Text))
                    cn.Sup_Adr= TextBox16.Text;

                //cn.Sup_Rsp= TextBox3.Text;
                //cn.Sup_Othr= TextBox4.Text;
                if (!string.IsNullOrEmpty(TextBox5.Text) || !string.IsNullOrWhiteSpace(TextBox5.Text))
                    cn.Sup_Email= TextBox5.Text;
                //cn.Sup_Tel1= TextBox6.Text;
                //cn.Sup_Tel2= TextBox7.Text;
                //cn.Mobile= TextBox8.Text;
                if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrWhiteSpace(TextBox1.Text))
                    cn.Level_no = Convert.ToInt16(TextBox1.Text);
                if (!string.IsNullOrEmpty(TextBox9.Text) || !string.IsNullOrWhiteSpace(TextBox9.Text))
                    cn.Credit_Value= Convert.ToDecimal( TextBox9.Text );
                if (!string.IsNullOrEmpty(TextBox10.Text) || !string.IsNullOrWhiteSpace(TextBox10.Text))
                    cn.Credit_Days=Convert.ToInt16( TextBox10.Text);
                if (!string.IsNullOrEmpty(TextBox12.Text) || !string.IsNullOrWhiteSpace(TextBox12.Text))
                    cn.Fbal_Db=Convert.ToDecimal( TextBox12.Text);
                if (!string.IsNullOrEmpty(TextBox11.Text) || !string.IsNullOrWhiteSpace(TextBox11.Text))
                    cn.Fbal_CR=Convert.ToDecimal( TextBox11.Text);
                if (!string.IsNullOrEmpty(TextBox13.Text) || !string.IsNullOrWhiteSpace(TextBox13.Text))
                    cn.Curncy_No= short.Parse( TextBox13.Text);
                if (!string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || !string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue))
                    RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                if (!string.IsNullOrEmpty(DropDownList1.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList1.SelectedValue))
                    DropDownList1.SelectedValue = Convert.ToString(cn.SupCtg_No);
                if (!string.IsNullOrEmpty(DropDownList2.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList2.SelectedValue))
                    DropDownList2.SelectedValue = Convert.ToString(cn.Cntry_No);
                if (!string.IsNullOrEmpty(DropDownList3.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList3.SelectedValue))
                    DropDownList3.SelectedValue = Convert.ToString(cn.Curncy_No);

                db.SaveChanges();
            Response.Redirect("mtssuplir.aspx");
            }
            catch
            {
                Label1.Text = "من فضلك املا كل الحقول";
            }
        }
        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    var id = int.Parse(Request.QueryString["no"]);
        //    var cn = (from p in db.MtsSuplir
        //              where p.Sup_No == id
        //              select p).SingleOrDefault();
        //    db.MtsSuplir.Remove(cn);
        //    db.SaveChanges();
        //    Response.Redirect("mtssuplir.aspx");
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mtssuplir.aspx");

        }
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox28.Text = DropDownList4.SelectedValue;
            int no = int.Parse(DropDownList4.SelectedValue);
            DropDownList5.DataValueField = "Brn_No";
            DropDownList5.DataTextField = "Brn_NmAr";
            DropDownList5.DataSource = db.MainBranch.Where(o => o.Cmp_No == no).ToList();
            DropDownList5.DataBind();

            load_tree();
        }
        //protected void load_tree(int id)
        //{
        //    TreeView1.Nodes.Clear();
        //    var cn = db.MtsSuplir.Where(o => o.Sup_No == id).SingleOrDefault(); ;
        //    ////////// tree view 
        //    TreeView1.ExpandDepth = int.Parse(cn.Level_no.ToString()) - 1;
        //    foreach (MtsSuplir sup in db.MtsSuplir.Where(o => o.Parnt_Sup == 0))
        //    {
        //        TreeNode node = new TreeNode();
        //        node.Text = sup.Sup_NmAr.ToString();
        //        node.Value = sup.Sup_No.ToString();
        //        //you can affect the node.NavigateUrl

        //        node.PopulateOnDemand = true;
        //        TreeView1.Nodes.Add(node);
        //    }
        //}
        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsSuplir sup in db.MtsSuplir.Where(o => o.Parnt_Sup == id))
            {
                TreeNode node = new TreeNode(sup.Sup_NmAr.ToString(), sup.Sup_No.ToString());
                node.PopulateOnDemand = true;
                e.Node.ChildNodes.Add(node);
            }
        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
           
            if (TreeView1.SelectedNode != null)
            {

                ViewState["id"] = TreeView1.SelectedNode.Value;
            }
           
            try
            {

                int id = int.Parse(TreeView1.SelectedNode.Value);
                ViewState["id"] = id;

                var cn = db.MtsSuplir.Where(o => o.Sup_No == id).SingleOrDefault();

                TextBox15.Text = cn.Sup_NmAr.ToString();
                if (!string.IsNullOrEmpty(cn.Sup_Email))
                    TextBox5.Text = cn.Sup_Email.ToString();
                // TextBox4.Text = cn.Sup_Othr.ToString();
                TextBox14.Text = cn.Sup_No.ToString();
                TextBox2.Text = cn.Sup_NmEn.ToString();
                if (!string.IsNullOrEmpty(cn.Tel1))
                    TextBox6.Text = cn.Tel1.ToString();
                if (!string.IsNullOrEmpty(cn.Sup_Tel))
                    TextBox7.Text = cn.Sup_Tel.ToString();
                if (!string.IsNullOrEmpty(cn.Sup_Mobile))
                    TextBox8.Text = cn.Sup_Mobile.ToString();
                //حد الائتمان مبلغ و يوم و رقم الحساب
                if (!decimal.Equals(cn.Credit_Value, DBNull.Value))
                    TextBox9.Text = cn.Credit_Value.ToString();
                //if (!string.IsNullOrEmpty(cn.Credit_Days))
                //    TextBox10.Text = cn.Credit_Days.ToString();
                if (!string.IsNullOrEmpty(cn.Sup_Mobile))
                    TextBox13.Text = cn.Curncy_No.ToString();
                //فئة المورد
                DropDownList2.SelectedValue = cn.SupCtg_No.ToString();
                DropDownList3.SelectedValue = cn.Cntry_No.ToString();
                DropDownList1.SelectedValue = cn.Curncy_No.ToString();
                TextBox16.Text = string.IsNullOrEmpty(cn.Sup_Adr) ? "" : cn.Sup_Adr.ToString();
                //TextBox3.Text = cn.Sup_Rsp.ToString();
                TextBox10.Text = cn.Credit_Days.ToString();
                TextBox1.Text = cn.Level_no.ToString();
                TextBox11.Text = cn.Fbal_CR.ToString();
                TextBox12.Text = cn.Fbal_Db.ToString();
                RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                TextBox26.Text = cn.Brn_No.ToString();

                var cn1 = db.MtsSuplirOthr.Where(o => o.Sup_No == id).SingleOrDefault();
                if (cn1 != null)
                {
                    TextBox22.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn1) ? "" : cn1.Cntct_Prsn1.ToString();
                    TextBox30.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn2) ? "" : cn1.Cntct_Prsn2.ToString();
                    TextBox31.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn3) ? "" : cn1.Cntct_Prsn3.ToString();
                    TextBox35.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn4) ? "" : cn1.Cntct_Prsn4.ToString();
                    TextBox36.Text = string.IsNullOrEmpty(cn1.Cntct_Prsn5) ? "" : cn1.Cntct_Prsn5.ToString();
                    TextBox23.Text = string.IsNullOrEmpty(cn1.TitL1) ? "" : cn1.TitL1.ToString();
                    TextBox37.Text = string.IsNullOrEmpty(cn1.TitL2) ? "" : cn1.TitL2.ToString();
                    TextBox38.Text = string.IsNullOrEmpty(cn1.TitL3) ? "" : cn1.TitL3.ToString();
                    TextBox39.Text = string.IsNullOrEmpty(cn1.TitL4) ? "" : cn1.TitL4.ToString();
                    TextBox40.Text = string.IsNullOrEmpty(cn1.TitL5) ? "" : cn1.TitL5.ToString();
                    TextBox24.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email1.ToString();
                    TextBox42.Text = string.IsNullOrEmpty(cn1.Email1) ? "" : cn1.Email2.ToString();
                    TextBox43.Text = string.IsNullOrEmpty(cn1.Email3) ? "" : cn1.Email3.ToString();
                    TextBox44.Text = string.IsNullOrEmpty(cn1.Email4) ? "" : cn1.Email4.ToString();
                    TextBox41.Text = string.IsNullOrEmpty(cn1.Email5) ? "" : cn1.Email5.ToString();
                    TextBox25.Text = string.IsNullOrEmpty(cn1.Mobile1) ? "" : cn1.Mobile1.ToString();
                    TextBox45.Text = string.IsNullOrEmpty(cn1.Mobile2) ? "" : cn1.Mobile2.ToString();
                    TextBox46.Text = string.IsNullOrEmpty(cn1.Mobile3) ? "" : cn1.Mobile3.ToString();
                    TextBox47.Text = string.IsNullOrEmpty(cn1.Mobile4) ? "" : cn1.Mobile4.ToString();
                    TextBox48.Text = string.IsNullOrEmpty(cn1.Mobile5) ? "" : cn1.Mobile5.ToString();
                    TextBox60.Text = string.IsNullOrEmpty(cn1.Notes) ? "" : cn1.Notes.ToString();
                }
                else
                {
                    TextBox22.Text = "";
                    TextBox30.Text = "";
                    TextBox31.Text = "";
                    TextBox35.Text = "";
                    TextBox36.Text = "";
                    TextBox23.Text = "";
                    TextBox37.Text = "";
                    TextBox38.Text = "";
                    TextBox39.Text = "";
                    TextBox40.Text = "";
                    TextBox24.Text = "";
                    TextBox42.Text = "";
                    TextBox43.Text = "";
                    TextBox44.Text = "";
                    TextBox41.Text = "";
                    TextBox25.Text = "";
                    TextBox45.Text = "";
                    TextBox46.Text = "";
                    TextBox47.Text = "";
                    TextBox48.Text = "";
                    TextBox60.Text = "";
                }
                load_tree(/*int.Parse(ViewState["ID"].ToString())*/);
            }
            catch { }
        }
    }
}
