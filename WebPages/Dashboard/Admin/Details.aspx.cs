﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using DataAccess.Repository;

namespace WebPages.Dashboard.Admin
{
    public partial class Details : System.Web.UI.Page
    {
        private vStudentRepository rep = new vStudentRepository();

        protected void Page_Load(object sender, EventArgs e)

        {
            string id = Request.QueryString["userid"];

            if (id != "" || id != null)
            {
                Student lo = rep.FindByStudentCode(id);
                tbxFirstName.InnerText = lo.FirstName;
                tbxLastName.InnerText = lo.LastName;
                tbxStudentCode.InnerText = lo.StudentCode;
                tbxNatinalCode.InnerText = lo.NationalCode;
                tbxBirthDay.InnerText = string.Format("{0}/{1}/{2}", lo.BirthDate.Substring(0, 4), lo.BirthDate.Substring(4, 2), lo.BirthDate.Substring(6, 2));
                tbxUserName.InnerText = lo.UserName;
                tbxPassword.InnerText = lo.Password;
                tbxFixTel.InnerText = lo.PhoneNumber;
                tbxMobile.InnerText = lo.MobileNumber;
                tbxAddress.InnerText = lo.Address;

                //tbxEmail.Value = lo.Email;
            }
        }
    }
}