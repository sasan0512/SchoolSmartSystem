using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Repository
{
    public class vLessonGroupRepository
    {
        private Connection conn;

        public vLessonGroupRepository()
        {
            conn = new Connection();
        }

        public vLessonGroup FindByClass(string clas)
        {
            vLessonGroup result = null;

            using (SchoolDBEntities sd = conn.GetContext())
            {
                //--  SELECT * FROM vPhoneList WHERE PhobeID = phoneID

                result = (from r in sd.vLessonGroups
                          where r.Class == clas
                          select r).FirstOrDefault();
            }

            return result;
        }
    }
}
