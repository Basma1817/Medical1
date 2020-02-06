using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class mtsitems_cat : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        private DataSet dataSet;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataTextField = "Cmp_Nm";
                DropDownList1.DataValueField = "Cmp_No";
                DropDownList1.DataSource = db.MainCmpnam.ToList();
                DropDownList1.DataBind();
                TextBox26.Text = DropDownList1.SelectedValue;

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
            
            foreach (MtsItmcatgry itm in db.MtsItmcatgry.Where(o => o.Parnet_Catg == 0 && o.Cmp_No == no ))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.Itm_NmAr.ToString();
                node.Value = itm.Catg_No.ToString();
                //you can affect the node.NavigateUrl
                if(db.MtsItmcatgry.Where(o=>o.Parnet_Catg == itm.Catg_No && o.Cmp_No == no).Count()>0)
                node.PopulateOnDemand = true;
                else
                node.PopulateOnDemand = false;
                TreeView1.Nodes.Add(node);
            }
            TreeView1.CollapseAll();
        }

        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            int no = int.Parse(DropDownList1.SelectedValue);
         
            //do your "select from yourTable where parentId =" + id;

            foreach (MtsItmcatgry itm in db.MtsItmcatgry.Where(o => o.Parnet_Catg == id && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode(itm.Itm_NmAr.ToString(), itm.Catg_No.ToString());
                if (db.MtsItmcatgry.Where(o => o.Parnet_Catg == itm.Catg_No && o.Cmp_No == no).Count() > 0)
                    node.PopulateOnDemand = true;
                else
                    node.PopulateOnDemand = false;
                e.Node.ChildNodes.Add(node);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int no = int.Parse(DropDownList1.SelectedValue);
            TextBox26.Text = DropDownList1.SelectedValue;
            DropDownList2.DataTextField = "Name_Arb";
            DropDownList2.DataValueField = "Actvty_No";
            DropDownList2.DataSource = db.ActivityTypes.Where(o => o.cmp_no == no).ToList();
            DropDownList2.DataBind();

            load_tree();
        }


        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    load_tree();
        //}

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            int id = int.Parse(TreeView1.SelectedNode.Value);
            ViewState["id"] = id;
            var cn = db.MtsItmcatgry.Where(o => o.Catg_No == id).FirstOrDefault();

            TextBox60.Text = cn.Level_No.ToString();
            RadioButtonList1.SelectedValue = cn.Level_Status.ToString();
            TextBox2.Text = cn.Itm_NmAr;
            TextBox3.Text = cn.Itm_NmEn;
            DropDownList3.SelectedValue = cn.Sup_No.ToString();
            TextBox4.Text = cn.Catg_No.ToString();

            var cn1 = db.MtsItmMfs.Where(o => o.Itm_No == id).FirstOrDefault();
            if (cn1 != null)
            {
             
                CheckBox9.Checked = Convert.ToBoolean(cn1.Prct_Discount);
                CheckBox3.Checked = Convert.ToBoolean(cn1.Invt_Active);
                CheckBox4.Checked = Convert.ToBoolean(cn1.Itm_Req);
                CheckBox12.Checked = Convert.ToBoolean(cn1.Itm_Relation);
                CheckBox13.Checked = Convert.ToBoolean(cn1.Measure_Grp);
                CheckBox2.Checked = Convert.ToBoolean(cn1.Itm_Active);
                CheckBox1.Checked = Convert.ToBoolean(cn1.Sale_Active);

                TextBox16.Text = cn1.Prct_SalBouns.ToString();
                TextBox19.Text = cn1.Taxp_Extra.ToString();
                TextBox18.Text = cn1.Req_Limit.ToString();
                TextBox47.Text = cn1.MaxQty_SaL.ToString();
                TextBox64.Text = cn1.Label_No.ToString();

                // //تفاصيل الصنف field
                DropDownList4.SelectedValue = cn1.Unit_No.ToString();
                DropDownList13.SelectedValue = cn1.UnitPur_No.ToString();
                DropDownList14.SelectedValue = cn1.UnitSaL_No.ToString();
                TextBox14.Text = cn1.Itm_Sal1.ToString();
                TextBox1.Text = cn1.Itm_Sal2.ToString();
                TextBox63.Text = cn1.Ref_No.ToString();
                TextBox24.Text = cn1.Itm_COst.ToString();
                TextBox64.Text = cn1.Label_No.ToString();
                CheckBox10.Checked = Convert.ToBoolean(cn1.Chk_Qty2);
                CheckBox11.Checked = Convert.ToBoolean(cn1.Chk_Qty3);


                // //تفاصيل الشد للصنف
                var cn2 = db.MtsItmfsunit.Where(o => o.Itm_No == id).SingleOrDefault();
                if(cn2.Ln_No == 0)
                { 
                DropDownList8.SelectedValue = cn1.Unit_No.ToString();
                TextBox75.Text = cn2.Itm_No.ToString();
                TextBox76.Text = cn2.Unit_Ratio.ToString();
                TextBox77.Text = cn2.Unit_Sal1.ToString();
                TextBox78.Text = cn2.Unit_Pur.ToString();
                TextBox79.Text = cn2.Unit_Cost.ToString();
                DropDownList5.SelectedValue = cn2.Label_No.ToString();
                }
                if (cn2.Ln_No == 1) {
                    DropDownList15.SelectedValue = cn1.Unit_No.ToString();
                    TextBox80.Text = cn2.Itm_No.ToString();
                    TextBox81.Text = cn2.Unit_Ratio.ToString();
                    TextBox82.Text = cn2.Unit_Sal1.ToString();
                    TextBox83.Text = cn2.Unit_Pur.ToString();
                    TextBox84.Text = cn2.Unit_Cost.ToString();
                    DropDownList6.SelectedValue = cn2.Label_No.ToString();
                }
                if (cn2.Ln_No == 2)
                {
                    DropDownList16.SelectedValue = cn1.Unit_No.ToString();
                    TextBox86.Text = cn2.Itm_No.ToString();
                    TextBox87.Text = cn2.Unit_Ratio.ToString();
                    TextBox88.Text = cn2.Unit_Sal1.ToString();
                    TextBox89.Text = cn2.Unit_Pur.ToString();
                    TextBox90.Text = cn2.Unit_Cost.ToString();
                    DropDownList7.SelectedValue = cn2.Label_No.ToString();
                }



                DataSet dataSet = new DataSet("myDataSet");
                dataSet.Tables.Add(new DataTable());
            }

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (int.Parse(ViewState["id"].ToString()) == 0)
            //{
            //    string script = "alert(\"لم يتم إختيار عنصر للتعديل!\");";
            //    ScriptManager.RegisterStartupScript(this, GetType(),
            //                          "ServerControlScript", script, true);
            //}
            //else {
                Response.Redirect("update_mtsitems_cat.aspx");
            //}
         
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('are you sure of delete?{0}')"+db.MtsChartAc.Where(o=>o.Acc_No == int.Parse(ViewState["id"].ToString())).Select(o=>o.Acc_Nm), true);
            int id = int.Parse(ViewState["id"].ToString());
            //string name = db.MtsChartAc.Where(o => o.Acc_No == id).Select(o => o.Acc_Nm).SingleOrDefault();
            //string confirmValue = Request.Form["confirm_value"];
            //if (confirmValue == "Yes")
            //{
            if (id == 0)
            {
                string script = "alert(\"لم يتم إختيار عنصر للحذف!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                try
                {
                    var cn = db.MtsItmMfs.Where(o => o.Itm_No == id).SingleOrDefault();
                    db.MtsItmMfs.Remove(cn);
                    db.SaveChanges();
                }
                catch { }
                load_tree();
            }
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert_mtsitems_cat.aspx");
        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("chart_acreport.aspx");
        }
        
    }
}