using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Repository
{
    public class StudentRepository
    {
        private Connection conn;

        public StudentRepository()
        {
            conn = new Connection();
        }
        public Student FindByNatinalCode(int nationalCode)
        {
            Student result = null;

            using (SchoolDBEntities sd  = conn.GetContext())
            {
                //--  SELECT * FROM vPhoneList WHERE PhobeID = phoneID

                result = (from r in sd.Students
                          where r.NationalCode == nationalCode
                          select r).FirstOrDefault();
            }

            return result;
        }
        
    }

}
