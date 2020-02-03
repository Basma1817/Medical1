using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class AddActivateAcc : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = db.Sec_Roles.ToList();
                DropDownList1.DataValueField = "GroupId";
                DropDownList1.DataTextField = "GroupName";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sec_Users user = new mid.Sec_Users();
            user.UserName = TextBox1.Text;
            user.UserPass = TextBox2.Text;
            user.Active = CheckBox1.Checked;
            user.GroupId = int.Parse(DropDownList1.SelectedValue);
            db.Sec_Users.Add(user);
            db.SaveChanges();
            Response.Redirect("ActivateAcc.aspx");
        }
    }
}