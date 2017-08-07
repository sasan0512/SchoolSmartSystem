using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using DataAccess.Repository;

namespace WebPages.Dashboard.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudents();
            }
        }

        public void LoadStudents()
        {
            vStudentRepository sr = new vStudentRepository();
            gvStudents.DataSource = sr.GetAllStudents();
            gvStudents.DataBind();
            vStudent st = new vStudent();
        }

        protected void gvStudents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:4911/Dashboard/Admin/AddStudent.aspx");
        }

        protected void gvStudents_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void gvStudents_RowEditing(object sender, GridViewEditEventArgs e)
        {
        }

        protected void gvStudents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                // Retrieve the row index stored in the
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button
                // from the Rows collection.
                GridViewRow row = gvStudents.Rows[index];

                Response.Redirect("http://localhost:4911/Dashboard/Admin/EditStudent.aspx?userid=" + row.Cells[0].Text);
            }
            if (e.CommandName == "Details")
            {
                // Retrieve the row index stored in the
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button
                // from the Rows collection.
                GridViewRow row = gvStudents.Rows[index];

                Response.Redirect("http://localhost:4911/Dashboard/Admin/Details.aspx?userid=" + row.Cells[0].Text);
            }
            if (e.CommandName == "Delet")
            {
                // Retrieve the row index stored in the
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button
                // from the Rows collection.
                GridViewRow row = gvStudents.Rows[index];

                vStudentRepository rep = new vStudentRepository();

                SchoolDBEntities db = new SchoolDBEntities();
                db.Students.Remove(rep.FindByStudentCode(row.Cells[0].Text));
            }
        }
    }
}