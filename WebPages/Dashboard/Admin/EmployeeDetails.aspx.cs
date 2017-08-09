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
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        private KarmandRepository rep = new KarmandRepository();

        protected void Page_Load(object sender, EventArgs e)

        {
            string id = Request.QueryString["userid"];

            if (id != "" || id != null)
            {
                Karmand lo = rep.FindByEmployeeID(id);
                tbxFirstName.InnerText = lo.FirstName;
                tbxLastName.InnerText = lo.LastName;
                tbxPersonalCode.InnerText = lo.PersonalCode;
                tbxBirthDay.InnerText = string.Format("{0}/{1}/{2}", lo.BirthDate.Substring(0, 4), lo.BirthDate.Substring(4, 2), lo.BirthDate.Substring(6, 2));
                tbxUserName.InnerText = lo.UserName;
                tbxPassword.InnerText = lo.UserPass;
                tbxFixTel.InnerText = lo.PhoneNumber;
                tbxMobile.InnerText = lo.Mobile;

                //tbxEmail.Value = lo.Email;
            }
        }
    }
}