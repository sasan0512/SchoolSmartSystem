using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;
using System.Data;

namespace DataAccess.Repository
{
    internal class OzviatRepository
    {
        private SchoolDBEntities db = new SchoolDBEntities();
        private Connection conn;

        public OzviatRepository()
        {
            conn = new Connection();
        }

        public List<string> FindByName(int lgid)
        {
            List<string> result = new List<string>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<string> pl =
                    from r in sd.Ozviats
                    where r.LGID == lgid

                    select r.StudentCode;

                result = pl.ToList();
                return result;
            }
        }
    }
}