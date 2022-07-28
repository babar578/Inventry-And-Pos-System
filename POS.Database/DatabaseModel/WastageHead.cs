//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace POS.Database.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class WastageHead
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WastageHead()
        {
            this.WastageDetails = new HashSet<WastageDetail>();
        }
    
        public int Id { get; set; }
        public string DocNo { get; set; }
        public string Remarks { get; set; }
        public Nullable<int> LocationId { get; set; }
        public Nullable<int> DepartmentId { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public int CreatedBy { get; set; }
        public System.DateTime CreationDate { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual Location Location { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WastageDetail> WastageDetails { get; set; }
    }
}
