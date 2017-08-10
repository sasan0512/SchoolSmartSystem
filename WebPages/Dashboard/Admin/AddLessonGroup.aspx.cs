using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using DataAccess.Repository;
using Common;

namespace WebPages.Dashboard.Admin
{
    public partial class AddLessonGroup : System.Web.UI.Page
    {
        private vLessonGroupRepository lr = new vLessonGroupRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSabtLessonGroup_Click(object sender, EventArgs e)
        {
            LessonGroup le = new LessonGroup();
            le.Class = tbxClass.Value;
            le.LessonID = tbxLessonTitle.Value.ToInt();
            le.TeacherCode = tbxTeacherFName.Value;
            le.Day = tbxDay.Value.ToInt();
            le.Time = tbxTime.Value.ToInt();
            le.GradeID = tbxGradeTitle.Value.ToInt();

            // kar.Email = tbxEmail.Value;

            lr.SaveLessonGroups(le);
            Response.Redirect("http://localhost:4911/Dashboard/Admin/LessonGroups.aspx");
        }
    }
}