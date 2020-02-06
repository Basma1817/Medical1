using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mid
{
    public partial class reftypmain : System.Web.UI.Page
    {
        ICDBTrdAEntities db = new ICDBTrdAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataValueField = "Cmp_No";
            DropDownList1.DataTextField = "Cmp_Nm";
            DropDownList1.DataSource = db.MainCmpnam.ToList();
            DropDownList1.DataBind();

            //var query = from p in db.InvAstRefTypMain
                       
            //            select new
            //            {
            //                اسم_النوع_بالانجليزية = p.RefTyp_Nm,
            //                اسم_النوع_بالعربيه = p.RefTyp_NmAr,
            //                رقم_النوع = p.Main_Reftyp,
            //            };
            //GridView1.DataSource = query.ToList();
            //GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    int id = int.Parse(TextBox1.Text);
            //    var query = from p in db.InvAstRefTypMain
            //                where p.Main_Reftyp == id
            //                select new
            //                {
            //                    اسم_النوع_بالانجليزية = p.RefTyp_Nm,
            //                    اسم_النوع_بالعربيه = p.RefTyp_NmAr,
            //                    رقم_النوع = p.Main_Reftyp,
            //                };
            //    GridView1.DataSource = query.ToList();
            //    GridView1.DataBind();
            //}
            //catch
            //{

            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("insertreftypmain");
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox1.Text)) ;
            //{
            //    var query = from p in db.InvAstRefTypMain

            //                select new
            //                {
            //                    اسم_النوع_بالانجليزية = p.RefTyp_Nm,
            //                    اسم_النوع_بالعربيه = p.RefTyp_NmAr,
            //                    رقم_النوع = p.Main_Reftyp,
            //                };
            //    GridView1.DataSource = query.ToList();
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    int id = int.Parse(TextBox1.Text);
            //    var query = from p in db.InvAstRefTypMain
            //                where p.Main_Reftyp == id
            //                select new
            //                {
            //                    اسم_النوع_بالانجليزية = p.RefTyp_Nm,
            //                    اسم_النوع_بالعربيه = p.RefTyp_NmAr,
            //                    رقم_النوع = p.Main_Reftyp,
            //                };
            //    GridView1.DataSource = query.ToList();
            //    GridView1.DataBind();
            //}
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("reftypmainReport.aspx");
        }
    }
}