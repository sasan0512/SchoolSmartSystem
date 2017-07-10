using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;
using System.Data;

namespace DataAccess.Repository
{
    public class vStudentRepository
    { 
        private Connection conn;

        public vStudentRepository()
        {
            conn = new Connection();
        }

        public vStudent FindByNatinalCode(int nationalCode)
        {
            vStudent result = null;

            using (SchoolDBEntities sd  = conn.GetContext())
            {
                //--  SELECT * FROM vPhoneList WHERE PhobeID = phoneID

                result = (from r in sd.vStudents
                          where r.NationalCode == nationalCode
                          select r).FirstOrDefault();
            }

            return result;
        }

        public vStudent FindByIdentityCode(int identityCode)
        {
            vStudent result = null;

            using (SchoolDBEntities sd = conn.GetContext())
            {
                //--  SELECT * FROM vPhoneList WHERE PhobeID = phoneID

                result = (from r in sd.vStudents
                          where r.IdentityCode == identityCode
                          select r).FirstOrDefault();
            }

            return result;
        }

        public DataTable FindByName(string Name)
        {
            List<vStudent> result = new List<vStudent>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vStudent> pl =
                    from r in sd.vStudents
                    where r.FirstName.Contains(Name)
                    
                    select r;

                result = pl.ToList();
            }
            return OnlineTools.ToDataTable(result);
        }

        public DataTable FindByFullName(string firstName, string lastName)
        {
            List<vStudent> result = new List<vStudent>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vStudent> pl =
                    from r in sd.vStudents
                    where r.FirstName.Contains(firstName) && r.LastName.Contains(lastName)

                    select r;

                result = pl.ToList();
            }
            return OnlineTools.ToDataTable(result);
        }

        public DataTable FindByBirthDate(string date)
        {
            List<vStudent> result = new List<vStudent>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vStudent> pl =
                    from r in sd.vStudents
                    where r.BirthDate== date

                    select r;

                result = pl.ToList();
            }
            return OnlineTools.ToDataTable(result);
        }

        public DataTable FindByHand(bool hand)
        {
            List<vStudent> result = new List<vStudent>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vStudent> pl =
                    from r in sd.vStudents
                    where r.Hand == hand

                    select r;

                result = pl.ToList();
            }
            return OnlineTools.ToDataTable(result);
        }
    }

}
