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
    
    public partial class GetHistoryCarVoucher_Result
    {
        public string CustomerName { get; set; }
        public string CarNumber { get; set; }
        public string ItemName { get; set; }
        public double Price { get; set; }
        public double Quantity { get; set; }
        public string Reading { get; set; }
        public string Mobile { get; set; }
        public double TotalPrice { get; set; }
        public string InvoiceNumber { get; set; }
        public double GstCharged { get; set; }
        public double DiscountCharged { get; set; }
        public double ServiceCharged { get; set; }
        public double GrossAmount { get; set; }
        public double TotalNetAmount { get; set; }
        public double ReceiptTotalCash { get; set; }
        public double ReceiptTotalCredit { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
    }
}
