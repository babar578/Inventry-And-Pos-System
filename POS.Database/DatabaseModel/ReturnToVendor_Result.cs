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
    
    public partial class ReturnToVendor_Result
    {
        public string VendorName { get; set; }
        public int HeadID { get; set; }
        public string DocNo { get; set; }
        public string Remarks { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public double Quantity { get; set; }
        public string ItemName { get; set; }
        public System.DateTime CreationDate { get; set; }
        public double Rate { get; set; }
        public double TotalRate { get; set; }
    }
}
