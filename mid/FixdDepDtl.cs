//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace mid
{
    using System;
    using System.Collections.Generic;
    
    public partial class FixdDepDtl
    {
        public int ID_NO { get; set; }
        public short Cmp_No { get; set; }
        public short Brn_No { get; set; }
        public long Tr_No { get; set; }
        public short Month_No { get; set; }
        public long Asset_No { get; set; }
        public Nullable<short> Jr_Ty { get; set; }
        public Nullable<System.DateTime> Tr_Dt { get; set; }
        public string Tr_DtAr { get; set; }
        public Nullable<decimal> Dep_Val { get; set; }
        public Nullable<decimal> Tot_Dep { get; set; }
        public Nullable<long> Acc_DB { get; set; }
        public Nullable<long> Acc_CR { get; set; }
    }
}