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
    public partial class EditeLessonGroup : System.Web.UI.Page
    {

        private vLessonGroupRepository rep = new vLessonGroupRepository();

        public void loadLessonGroup()
        {
            string id = Request.QueryString["LGID"];

            if (id != "" || id != null)
            {
                vLessonGroup lo = rep.FindByLGID(id.ToInt());
                tbxTeacherFName.Value = lo.FirstName;
                tbxTeacherLName.Value = lo.LastName;
                lblLGID.Value = lo.LGID.ToString();
                tbxDay.Value = lo.Day.ToString();
                tbxTime.Value = lo.Day.ToString();
                tbxClass.Value = lo.Class;
                tbxLessonTitle.Value = lo.LessonTitle;
                tbxUnit.Value = lo.Unit.ToString();
                tbxGradeTitle.Value = lo.GradeTitle;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            loadLessonGroup();
        }
        protected void btnSabtEditLessonGroup_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["LGID"];

            if (id != "" || id != null)
            {
                vLessonGroup vlg = rep.FindByLGID(id.ToInt());
                LessonGroup lg = new LessonGroup();

                lg.LGID = id.ToInt();
                lg.Class = tbxClass.Value;
                lg.LessonID = tbxLessonTitle.Value.ToInt();
                lg.TeacherCode = tbxTeacherFName.Value;
                lg.GradeID = tbxGradeTitle.Value.ToInt();
                lg.Day = tbxDay.Value.ToInt();
                lg.Time = tbxTime.Value.ToInt();

                rep.SaveLessonGroups(lg);
                Response.Redirect("http://localhost:4911/Dashboard/Admin/Students.aspx");
            }
        }
    }
}