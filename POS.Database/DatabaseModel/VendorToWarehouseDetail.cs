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
    
    public partial class VendorToWarehouseDetail
    {
        public int Id { get; set; }
        public string VoucherLineNo { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public double Quantity { get; set; }
        public double Rate { get; set; }
        public double PRate { get; set; }
        public double TotalRate { get; set; }
        public string LineRemarks { get; set; }
        public Nullable<double> Gst { get; set; }
        public Nullable<double> AdjustmentIN { get; set; }
        public Nullable<double> AdjustmentOUT { get; set; }
    }
}
