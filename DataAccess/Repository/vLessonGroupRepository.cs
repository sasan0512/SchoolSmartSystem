using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

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
        public DataTable GetAllLessonGroups()
        {
            List<vLessonGroup> result = new List<vLessonGroup>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vLessonGroup> pl =
                    from r in sd.vLessonGroups

                    orderby r.LGID
                    select r;

                result = pl.ToList();
                return OnlineTools.ToDataTable(result);
            }
        }

        public void SaveLessonGroups(LessonGroup lessonGroup)
        {
            using (SchoolDBEntities pb = conn.GetContext())
            {
                if (lessonGroup.LGID > 0)
                {
                    //==== UPDATE ====
                    pb.LessonGroups.Attach(lessonGroup);
                    pb.Entry(lessonGroup).State = EntityState.Modified;
                }
                else
                {
                    //==== INSERT ====
                    pb.LessonGroups.Add(lessonGroup);
                }

                pb.SaveChanges();
            }
        }

        public vLessonGroup FindByLGID(int id)
        {
            SchoolDBEntities db = new SchoolDBEntities();

            return db.vLessonGroups.Where(p => p.LGID == id).Single();
        }

        public DataTable FindByName(string Name)
        {
            List<Karmand> result = new List<Karmand>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<Karmand> pl =
                    from r in sd.Karmands
                    where r.FirstName.Contains(Name)

                    select r;

                result = pl.ToList();
                return OnlineTools.ToDataTable(result);
            }
        }

        public DataTable FindByFullName(string firstName, string lastName)
        {
            List<vLessonGroup> result = new List<vLessonGroup>();

            using (SchoolDBEntities sd = conn.GetContext())
            {
                IEnumerable<vLessonGroup> pl =
                    from r in sd.vLessonGroups
                    where r.FirstName.Contains(firstName) && r.LastName.Contains(lastName)

                    select r;

                result = pl.ToList();
                return OnlineTools.ToDataTable(result);
            }
        }

        public void DeleteLessonGroup(int EID)
        {
            SchoolDBEntities pb = conn.GetContext();

            LessonGroup selectedLesson = pb.LessonGroups.Where(p => p.LGID == EID).Single();

            if (selectedLesson != null)
            {
                pb.LessonGroups.Remove(selectedLesson);
                pb.SaveChanges();
            }
        }

        public void DeleteLessonGroups(List<int> EIDs)
        {
            SchoolDBEntities pb = conn.GetContext();

            var selectedLGroups =
                from r in pb.LessonGroups
                join at in EIDs
                on r.LGID equals at
                select r;

            foreach (var lGroup in selectedLGroups)
            {
                pb.LessonGroups.Remove(lGroup as LessonGroup);
            }

            pb.SaveChanges();

        }

        public void DeleteAll()
        {
            using (SchoolDBEntities pb = conn.GetContext())
            {
                System.Configuration.ConnectionStringSettingsCollection connectionStrings =
                    WebConfigurationManager.ConnectionStrings as ConnectionStringSettingsCollection;

                if (connectionStrings.Count > 0)
                {
                    System.Data.Linq.DataContext db = new System.Data.Linq.DataContext(connectionStrings["ConnectionString"].ConnectionString);

                    db.ExecuteCommand("TRUNCATE TABLE LessonGroups");
                }
            }
        }
    }
}
