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
    
    public partial class fn_ReportViewStockinhand_SimpleDept_Result
    {
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public string UnitName { get; set; }
        public string CategoryName { get; set; }
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public double ReceivedQty { get; set; }
        public double ReceivedRate { get; set; }
        public double ReceivedAmount { get; set; }
        public double IssuanceReturnQty { get; set; }
        public double IssuanceReturnRate { get; set; }
        public double IssuanceReturnAmount { get; set; }
        public double MonthlyConsumptionQty { get; set; }
        public double MonthlyConsumptionRate { get; set; }
        public double MonthlyConsumptionAmount { get; set; }
        public double BalanceQty { get; set; }
        public double BalanceAmount { get; set; }
    }
}
