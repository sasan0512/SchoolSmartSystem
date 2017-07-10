using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    class Connection
    {
        public SchoolDBEntities GetContext()
        {
            SchoolDBEntities sd = new SchoolDBEntities();
            return sd;
        }
    }
}
