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
    
    public partial class StuRegister
    {
        public int RegID { get; set; }
        public string StuCode { get; set; }
        public string RegDate { get; set; }
        public Nullable<int> RegGrade { get; set; }
    
        public virtual Student Student { get; set; }
    }
}