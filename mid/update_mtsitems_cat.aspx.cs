using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class update_mtsitems_cat : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                TextBox60.Enabled = false;
                TextBox4.Enabled = false;
                TextBox75.Enabled = false;

                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();
                TextBox17.Text = DropDownList1.SelectedValue;


                DropDownList2.DataValueField = "Brn_No";
                DropDownList2.DataTextField = "Brn_NmAr";
                DropDownList2.DataSource = db.MainBranch.ToList();
                DropDownList2.DataBind();

                int id = int.Parse(Request.QueryString["no"]);
                var cn = db.MtsItmMfs.Where(o => o.Itm_No == id).SingleOrDefault();
                ViewState.Add("id", id);

                TextBox60.Text = cn.Level_No.ToString();
                RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
                TextBox2.Text = cn.Itm_NmAr;
                TextBox3.Text = cn.Itm_NmEn;
                DropDownList3.SelectedValue = cn.Sup_No.ToString();
                TextBox4.Text = cn.Itm_No.ToString();
                //CheckBox9.Checked = cn.Prct_Discount;
                TextBox16.Text = cn.Prct_SalBouns.ToString();
                TextBox19.Text = cn.Taxp_Extra.ToString();
                TextBox18.Text = cn.Req_Limit.ToString();
                TextBox47.Text = cn.MaxQty_SaL.ToString();

                // //تفاصيل الصنف field
                DropDownList4.SelectedValue = cn.Unit_No.ToString();
                DropDownList13.SelectedValue = cn.UnitPur_No.ToString();
                DropDownList14.SelectedValue = cn.UnitSaL_No.ToString();
                TextBox14.Text = cn.Itm_Sal1.ToString();
                TextBox1.Text = cn.Itm_Sal2.ToString();
                TextBox63.Text = cn.Ref_No.ToString();
                TextBox24.Text = cn.Itm_COst.ToString();

                TextBox64.Text = cn.Label_No.ToString();

                var cn1 = db.MtsItmfsunit.Where(o => o.Itm_No == id).SingleOrDefault();
                DropDownList8.SelectedValue = cn1.Unit_No.ToString();
                TextBox75.Text = cn1.Itm_No.ToString();
                TextBox76.Text = cn1.Unit_Ratio.ToString();
                TextBox77.Text = cn1.Unit_Sal1.ToString();
                TextBox78.Text = cn1.Unit_Pur.ToString();
                TextBox79.Text = cn1.Unit_Cost.ToString();
                // TextBox23.Text = cn.Label_No.ToString();
                // // CheckBox11.Checked = cn.Chk_Qty2;
                // //  CheckBox10.Checked = cn.Chk_Qty3;

                // //تفاصيل الشد للصنف
                // int no = int.Parse(DropDownList1.SelectedValue);
                // var cn1 = db.MtsItmfsunit.Where(o => o.Cmp_No == no);
                load_tree();
            }
        }

        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            int no = int.Parse(DropDownList1.SelectedValue);
            foreach (MtsItmMfs sup in db.MtsItmMfs.Where(o => o.Cmp_No == no && o.Parent_Itm == 0))
            {
                TreeNode node = new TreeNode();
                node.Text = sup.Itm_NmAr.ToString();
                node.Value = sup.Itm_No.ToString();
                //you can affect the node.NavigateUrl

                node.PopulateOnDemand = true;
                TreeView1.Nodes.Add(node);
            }
            TreeView1.CollapseAll();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                var id = int.Parse(Request.QueryString["no"]);
                var cn = (from p in db.MtsItmMfs where p.Itm_No == id select p).SingleOrDefault();
                if (!string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrWhiteSpace(TextBox2.Text))
                    cn.Itm_NmAr = (TextBox2.Text);
                if (!string.IsNullOrEmpty(TextBox3.Text) || !string.IsNullOrWhiteSpace(TextBox3.Text))
                    cn.Itm_NmEn = TextBox3.Text;
                if (!string.IsNullOrEmpty(TextBox16.Text) || !string.IsNullOrWhiteSpace(TextBox16.Text))
                    cn.Prct_SalBouns = Convert.ToDecimal(TextBox16.Text);
                if (!string.IsNullOrEmpty(TextBox19.Text) || !string.IsNullOrWhiteSpace(TextBox19.Text))
                    cn.Taxp_Extra = Convert.ToDecimal(TextBox19.Text);
                if (!string.IsNullOrEmpty(TextBox4.Text) || !string.IsNullOrWhiteSpace(TextBox4.Text))
                    cn.Itm_No = long.Parse(TextBox4.Text);
                if (!string.IsNullOrEmpty(TextBox18.Text) || !string.IsNullOrWhiteSpace(TextBox18.Text))
                    cn.Req_Limit = Convert.ToInt16(TextBox18.Text);
                if (!string.IsNullOrEmpty(TextBox47.Text) || !string.IsNullOrWhiteSpace(TextBox47.Text))
                    cn.MaxQty_SaL = short.Parse(TextBox47.Text);
                if (!string.IsNullOrEmpty(TextBox62.Text) || !string.IsNullOrWhiteSpace(TextBox62.Text))
                    cn.UnitSaL_No = Convert.ToInt16(TextBox62.Text);
                if (!string.IsNullOrEmpty(TextBox13.Text) || !string.IsNullOrWhiteSpace(TextBox13.Text))
                    cn.UnitPur_No = Convert.ToInt16(TextBox13.Text);
                if (!string.IsNullOrEmpty(TextBox14.Text) || !string.IsNullOrWhiteSpace(TextBox14.Text))
                    cn.Itm_Sal1 = Convert.ToInt16(TextBox14.Text);
                if (!string.IsNullOrEmpty(TextBox15.Text) || !string.IsNullOrWhiteSpace(TextBox15.Text))
                    cn.Unit_No = Convert.ToInt16(TextBox15.Text);
                if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrWhiteSpace(TextBox1.Text))
                    cn.Itm_Sal2 = Convert.ToDecimal(TextBox1.Text);
                if (!string.IsNullOrEmpty(TextBox63.Text) || !string.IsNullOrWhiteSpace(TextBox63.Text))
                    cn.Ref_No = (TextBox63.Text);
                if (!string.IsNullOrEmpty(TextBox24.Text) || !string.IsNullOrWhiteSpace(TextBox24.Text))
                    cn.Itm_COst = Convert.ToDecimal(TextBox24.Text);
                if (!string.IsNullOrEmpty(TextBox64.Text) || !string.IsNullOrWhiteSpace(TextBox64.Text))
                    cn.Label_No = short.Parse(TextBox64.Text);
                if (!string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || !string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue))
                    RadioButtonList1.SelectedValue = cn.Level_Status.ToString();

                if (!string.IsNullOrEmpty(TextBox46.Text) || !string.IsNullOrWhiteSpace(TextBox46.Text))
                    cn.Sup_No = long.Parse(TextBox46.Text);
                if (!string.IsNullOrEmpty(DropDownList3.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList3.SelectedValue))
                    DropDownList3.SelectedValue = Convert.ToString(cn.Sup_No);
                if (!string.IsNullOrEmpty(DropDownList4.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList4.SelectedValue))
                    DropDownList4.SelectedValue = Convert.ToString(cn.Unit_No);
                if (!string.IsNullOrEmpty(DropDownList13.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList13.SelectedValue))
                    DropDownList13.SelectedValue = Convert.ToString(cn.UnitPur_No);
                if (!string.IsNullOrEmpty(DropDownList14.SelectedValue) || !string.IsNullOrWhiteSpace(DropDownList14.SelectedValue))
                        DropDownList14.SelectedValue = Convert.ToString(cn.UnitSaL_No);

                    db.SaveChanges();
                Response.Redirect("mtsitems_cat.aspx");
            }
            catch
            {
                Label1.Text = "من فضلك املا كل الحقول";
            }
        }


    }
}