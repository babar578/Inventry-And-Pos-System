﻿using POS.Database.DatabaseModel;
using POS.Utilities.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS.Utilities.ViewModel
{
    public class IssueToLocationHeadViewModel
    {
        public IssueToLocationHeadViewModel()
        {
            Departments = new List<DepartmentViewModel>();
            Locations = new List<LocationViewModel>();
            IssueToLocationDetails = new List<IssueToLocationDetailViewModel>();
            PurchaseItems = new List<VendorToWarehouseDetailViewModel>();
            RawItems = new List<ItemViewModel>();
        }

        public int Id { get; set; }
        public string DocNo { get; set; }
        public string Remarks { get; set; }
        public int LocationId { get; set; }
        public int DepartmentId { get; set; }
        public System.DateTime IssuanceDate { get; set; }
        public int CreatedBy { get; set; }
        public System.DateTime CreationDate { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }

        public DepartmentViewModel Department { get; set; }
        public List<DepartmentViewModel> Departments { get; set; }
        public List<IssueToLocationDetailViewModel> IssueToLocationDetails { get; set; }
        public LocationViewModel Location { get; set; }
        public List<LocationViewModel> Locations { get; set; }

        public int ItemId { get; set; }
        public List<VendorToWarehouseDetailViewModel> PurchaseItems { get; set; }
        public List<ItemViewModel> RawItems { get; set; }

        public string CreatedByName
        {
            get
            {
                if (CreatedBy > 0)
                {
                    return UserServices.GetUserNameById(CreatedBy);
                }
                else
                {
                    return " - ";
                }
            }
        }

        public string LocationName
        {
            get
            {
                if (LocationId > 0)
                {
                    return VendorServices.GetLocationNameById(LocationId);
                }
                else
                {
                    return " - ";
                }
            }
        }

        public string DepartmentName
        {
            get
            {
                if (DepartmentId > 0)
                {
                    return ItemServices.GetDepartmentName(DepartmentId);
                }
                else
                {
                    return " - ";
                }
            }
        }


        public static implicit operator IssueToLocationHeadViewModel(IssueToLocationHead head)
        {
            if (head == null)
                return null;

            return new IssueToLocationHeadViewModel()
            {
                Id = head.Id,
                DepartmentId = head.DepartmentId,
                LocationId = head.LocationId,
                ModifyDate = head.ModifyDate,
                Remarks = head.Remarks,
                IssuanceDate = head.IssuanceDate,
                DocNo = head.DocNo,
                CreatedBy = head.CreatedBy,
                CreationDate = head.CreationDate,
            };
        }

        public static implicit operator IssueToLocationHead(IssueToLocationHeadViewModel head)
        {
            if (head == null)
                return null;

            return new IssueToLocationHead()
            {
                Id = head.Id,
                DepartmentId = head.DepartmentId,
                LocationId = head.LocationId,
                ModifyDate = head.ModifyDate,
                Remarks = head.Remarks,
                IssuanceDate = head.IssuanceDate,
                DocNo = head.DocNo,
                CreatedBy = head.CreatedBy,
                CreationDate = head.CreationDate,
            };
        }
    }
}
