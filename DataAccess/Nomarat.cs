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
    
    public partial class Nomarat
    {
        public int NomreID { get; set; }
        public Nullable<int> OzviatID { get; set; }
        public string Date { get; set; }
        public Nullable<int> ExamType { get; set; }
        public string Nomre { get; set; }
        public Nullable<bool> Type { get; set; }
        public Nullable<int> NomrePercent { get; set; }
    
        public virtual Ozviat Ozviat { get; set; }
    }
}
