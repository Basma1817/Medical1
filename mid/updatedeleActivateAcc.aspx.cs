using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class updatedeleActivateAcc : System.Web.UI.Page
    {
        ICDBTrdAEntities i = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // load dropdownlist from roles table
                DropDownList1.DataValueField = "GroupId";
                DropDownList1.DataTextField = "GroupName";
                DropDownList1.DataSource = i.Sec_Roles.ToList();
                DropDownList1.DataBind();
                //load data to controls to update or delete it 
                var id = int.Parse(Request.QueryString["no"]);
                var account = i.Sec_Users.Find(id);
                TextBox1.Text = account.UserName;
                TextBox2.Text = account.UserPass;
                CheckBox1.Checked = account.Active.Value;
                DropDownList1.SelectedValue = account.GroupId.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = int.Parse(Request.QueryString["no"]);
            Sec_Users account = i.Sec_Users.Find(id);
            i.Sec_Users.Remove(account);
            i.SaveChanges();
            Response.Redirect("ActivateAcc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var id = int.Parse(Request.QueryString["no"]);
            Sec_Users account = i.Sec_Users.Find(id);
            account.UserName = TextBox1.Text;
            account.UserPass = TextBox2.Text;
            account.Active = CheckBox1.Checked;
            account.GroupId = int.Parse(DropDownList1.SelectedValue);
            i.SaveChanges();
            Response.Redirect("ActivateAcc.aspx");
        }
    }
}