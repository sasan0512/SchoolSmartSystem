//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Karmand
    {
        public Karmand()
        {
            this.LessonGroups = new HashSet<LessonGroup>();
        }
    
        public int EID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string BirthDate { get; set; }
        public string Mobile { get; set; }
        public string PhoneNumber { get; set; }
        public string PersonalCode { get; set; }
        public string Type { get; set; }
        public string Image { get; set; }
        public string UserName { get; set; }
        public string UserPass { get; set; }
    
        public virtual ICollection<LessonGroup> LessonGroups { get; set; }
    }
}
