using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class add_astarea : System.Web.UI.Page
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

            int n = int.Parse(DropDownList1.SelectedValue);
            int id = int.Parse(ViewState["id"].ToString());
            int count = db.AstCity.Count(o => o.Cmp_No == n && o.Prnt_City == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.AstCity.Where(o => o.Cmp_No == n && o.Prnt_City == id).Max(u => u.City_No) + 1;
            }
            else
            {

                if (count < 10)
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), "0", count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), "0", count + 1));
                    }
                }
                else
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), count + 1));
                    }
                }
            }
            TextBox1.Text = Convert.ToString(new_id);


        

    }



        protected void load_tree()
        {
            TreeView1.Nodes.Clear();
            int no = int.Parse(DropDownList1.SelectedValue);
            int act = int.Parse(DropDownList2.SelectedValue);
            foreach (AstCity itm in db.AstCity.Where(o => o.Prnt_City == 0 && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode();
                node.Text = itm.City_NmAR.ToString();
                node.Value = itm.City_No.ToString();
                if (db.AstCity.Where(o => o.Prnt_City == itm.City_No && o.Cmp_No == no && o.Actvty_No == act).Count() > 0)
                    node.PopulateOnDemand = true;
                else
                    node.PopulateOnDemand = false;

                TreeView1.Nodes.Add(node);

            }

            TreeView1.CollapseAll();

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            int id = int.Parse(TreeView1.SelectedNode.Value);
            ViewState["id"] = id;

            var cn = db.AstCity.Where(o => o.City_No == id).SingleOrDefault();
            int no = int.Parse(DropDownList1.SelectedValue);
            int count = db.AstCity.Count(o => o.Cmp_No == no && o.Prnt_City == id);
            long new_id;
            if (count > 0)
            {
                new_id = db.AstCity.Where(o => o.Cmp_No == no && o.Prnt_City == id).Max(u => u.City_No) + 1;
            }
            else
            {

                if (count < 10)
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), "0", count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), "0", count + 1));
                    }
                }
                else
                {
                    if (id < 10)
                    {
                        new_id = int.Parse(string.Concat("0", id.ToString(), count + 1));
                    }
                    else
                    {
                        new_id = int.Parse(string.Concat(id.ToString(), count + 1));
                    }
                }




            }


            TextBox1.Text = cn.City_No.ToString();



            DataSet dataSet = new DataSet("myDataSet");
            dataSet.Tables.Add(new DataTable());
        }


        protected void TreeView1_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            int id = int.Parse(e.Node.Value);
            int no = int.Parse(DropDownList1.SelectedValue);

            foreach (AstCity itm in db.AstCity.Where(o => o.Prnt_City == id && o.Cmp_No == no))
            {
                TreeNode node = new TreeNode(itm.City_NmAR.ToString(), itm.City_No.ToString());
                if (db.AstCity.Where(o => o.Prnt_City == itm.Cntry_No && o.Cmp_No == no).Count() > 0)
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


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("astarea.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AstCity cn = new AstCity();


            if (int.Parse(ViewState["id"].ToString()) == 0)
            {
                cn.Level_no = 1;
            }
            else
            {
                int di = int.Parse(ViewState["id"].ToString());
                var result = db.AstCity.Where(o => o.City_No == di).SingleOrDefault();
                cn.Level_no = Convert.ToInt16(result.Level_no + 1);
            }
            cn.City_NmAR = Convert.ToString(TextBox2.Text);
            cn.City_NmEN = Convert.ToString(TextBox3.Text);
            cn.Prnt_City = 0;
            cn.Level_Status = Convert.ToInt16(RadioButtonList2.SelectedValue);
            cn.Brn_No = int.Parse(TextBox16.Text);
          
            int id = int.Parse(ViewState["id"].ToString());

            /// to set level of new node 
            /// 


            if (cn.Prnt_City == null)
            {
                cn.Prnt_City = 0;
            }

            if (id == 0)
            {
                cn.Level_no = 1;
            }
            else
            {
                var result = db.AstCity.Where(o => o.City_No == id).FirstOrDefault();
                cn.Level_no = Convert.ToInt16(result.Level_no + 1);
            }

            if (cn.Cmp_No == 0)
            {
                cn.Cmp_No = 1;
            }



            if (cn.Actvty_No == 0)
            {
                cn.Actvty_No = 1;
            }

            //if (string.IsNullOrEmpty(DropDownList3.SelectedValue) || string.IsNullOrWhiteSpace(DropDownList3.SelectedValue)) { }
            //else
            //    cn.Sup_No = short.Parse(DropDownList3.SelectedValue);
            //if (string.IsNullOrEmpty(RadioButtonList1.SelectedValue) || string.IsNullOrWhiteSpace(RadioButtonList1.SelectedValue)) { }
            //else
            //    cn.Level_Status = Convert.ToInt16(RadioButtonList1.SelectedValue);

            cn.City_No = short.Parse(TextBox1.Text);
            db.AstCity.Add(cn);
            db.SaveChanges();
            load_tree();
            Response.Redirect("astarea.aspx");
        }


    }

}