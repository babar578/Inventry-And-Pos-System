﻿using CrystalDecisions.CrystalReports.Engine;
using Newtonsoft.Json;
using POS.Utilities;
using POS.Utilities.Services;
using POS.Utilities.Utilities;
using POS.Utilities.ViewModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;

namespace POS.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            if (user == null)
                return RedirectToAction("Login", new { Controller = "Account" });
            return View();
        }
                          public ActionResult GetUserDashboard()
        {



            return PartialView("_GetUserDashboard");
        }
        #region POS Panel
        public ActionResult POS(int? id, int? OrderId = null, bool? IsUpdateMode = null )
        {

            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            UserViewModel model = new UserViewModel();
            if (user == null)
                return RedirectToAction("Login", new { Controller = "Account" });


            OrderViewModel order = new OrderViewModel();
            List<OrderItemViewModel> orderItems = new List<OrderItemViewModel>();
            List<CartItemViewModel> cartItems = new List<CartItemViewModel>();

            if (id != null)
            {
                Session["CurrentTableId"] = id;
            }
            else
            {
                Session.Remove("CurrentTableId");
                Session.Remove("IsUpdateMode");
                Session.Remove("IsPayment");
            }
            if (OrderId != null && IsUpdateMode.HasValue)
            {
                order = OrderServices.GetOrderById(OrderId ?? 0);
                if (order != null)
                {
                    Session["IsUpdateMode"] = IsUpdateMode;
                    Session["IsPayment"] = order.IsPayment;
                    CartUtility.AddCurrentOrder(order);
                    orderItems = OrderServices.GetOrderItemsByOrderId(order.Id);
                    if (orderItems?.Count > 0)
                    {
                        cartItems = orderItems.Select(p => (CartItemViewModel)p).ToList();
                        CartUtility.LoadItemIntoCartWithUpdateMode(cartItems, id);
                    }
                }
            }

            return View("POS",model);
        }

        public ActionResult GetCarHistory(int? itemId)
        {

            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            UserViewModel modell = new UserViewModel();
            List<GetHistoryCarVoucherViewModel> gethistory = new List<GetHistoryCarVoucherViewModel>();


            if (user == null)
            {
                return RedirectToAction("Login", new { Controller = "Account" });
            }




            if (itemId > 0)
            {
                modell.getHistoryCars = ReportServices.GetCarHistoryreportReport(Convert.ToInt32(itemId)).ToList();

            }


            return  View("GetCarHistory", modell);
        }


        [HttpPost]
        public ActionResult GetCarHistorybyId(int? itemId)
        {

            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            UserViewModel modell = new UserViewModel();
            List<GetHistoryCarVoucherViewModel> gethistory = new List<GetHistoryCarVoucherViewModel>();
               

            if (user == null)
            {
                return RedirectToAction("Login", new { Controller = "Account" });
            }




            if (itemId > 0)
            {
                modell.getHistoryCars = ReportServices.GetCarHistoryreportReport(Convert.ToInt32(itemId)).ToList();
                foreach (var item in modell.getHistoryCars)
                {
                    item.DateDate =  (item.CreationDate).ToString(WebConfigSettings.DateTimeFormat);
                   
                }


            }

            return Json(modell, JsonRequestBehavior.AllowGet);
        }



        public ActionResult Categories()
        {
            return PartialView("_Categories");
        }

        public ActionResult CategoryDetails(int? CategoryId)
        {
            List<ItemStockViewModel> items = new List<ItemStockViewModel>();
            if (CategoryId.HasValue)
            {
                items = VendorServices.GetItemStockbyCategoriesID(CategoryId ?? 0);
            }
            return PartialView("_CategoryDetails", items);
        }

        [HttpPost]
        public JsonResult IsHoldTable(int id)
        {
            string message = string.Empty;
            try
            {
                var hold = ItemServices.IsHoldTable(id);
                if (hold)
                {
                    string table = WebUtil.CurrentTable + id;
                    HttpCookie tableCookie = new HttpCookie(table)
                    {
                        Value = "",
                        Expires = DateTime.Now.AddDays(1)
                    };
                    Response.Cookies.Add(tableCookie);
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }

        [HttpPost]
        public JsonResult IsReleaseTable(int id)
        {
            string message = string.Empty;
            try
            {
                var release = ItemServices.IsReleaseTable(id);
                if (release)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }

        public ActionResult SideMenu()
        {
            return PartialView("_SideMenu");
        }

        #endregion
        #region AddToCart Working
        public ActionResult CartItems()
        {
            return PartialView("_CartItems");
        }
        [HttpPost]
        public JsonResult AddItemIntoCart(CartItemViewModel model)
        {
            string message = string.Empty;
            try
            {
                bool add = CartUtility.AddItemIntoCart(model);

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult CurrentItemRemarks(string id, int? tableId = null, string remarks = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.CurrentItemRemarks(id, tableId, remarks);
                }
                else
                {
                    add = CartUtility.CurrentItemRemarks(id, null, remarks);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult RemoveItemFromCart(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.RemoveItemFromCart(id, tableId);
                }
                else
                {
                    add = CartUtility.RemoveItemFromCart(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult VoidItemFromCart(string id, int? tableId = null, double? Price = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.VoidItemFromCart(id, tableId);
                }
                else
                {
                    add = CartUtility.VoidItemFromCart(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }

        [HttpPost]
        public JsonResult ComplimentaryItemFromCart(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.ComplimentaryItemFromCart(id, tableId);
                }
                else
                {
                    add = CartUtility.ComplimentaryItemFromCart(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult ReleaseVoidItemFromCart(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.ReleaseVoidItemFromCart(id, tableId);
                }
                else
                {
                    add = CartUtility.ReleaseVoidItemFromCart(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult ReleaseComplimentaryItemFromCart(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.ReleaseComplimentaryItemFromCart(id, tableId);
                }
                else
                {
                    add = CartUtility.ReleaseComplimentaryItemFromCart(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        //PointQuantity
        [HttpPost]
        public JsonResult PointQuantity(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;

                if (tableId != null)
                {
                    add = CartUtility.PointQuantity(id, tableId);
                }
                else
                {
                    add = CartUtility.PointQuantity(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult PlusQuantity(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;

                if (tableId != null)
                {
                    add = CartUtility.PlusQuantity(id, tableId);
                }
                else
                {
                    add = CartUtility.PlusQuantity(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult MinusQuantity(string id, int? tableId = null)
        {
            string message = string.Empty;
            try
            {
                bool add;
                if (tableId != null)
                {
                    add = CartUtility.MinusQuantity(id, tableId);
                }
                else
                {
                    add = CartUtility.MinusQuantity(id);
                }

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        [HttpPost]
        public JsonResult UpdateItemQty(string id, double qty)
        {
            string message = string.Empty;
            try
            {
                bool add = CartUtility.UpdateItemQty(id, qty);
                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        #endregion
        #region CartButtons
        public ActionResult Payment()
        {
            return PartialView("_Payment");
        }

        public ActionResult PaymentByCash()
        {
            return PartialView("_PaymentByCash");
        }

        public ActionResult GST()
        {
            return PartialView("_GST");
        }
        public ActionResult Discount()
        {
            return PartialView("_Discount");
        }

        public ActionResult DiscountPer()
        {
            return PartialView("_DiscountPer");
        }

        public ActionResult Tip()
        {
            return PartialView("_Tip");
        }

        public ActionResult ServiceCharges()
        {
            return PartialView("_ServiceCharges");
        }
        #endregion
        #region Order Working
        public JsonResult CreateTicket(OrderViewModel model)
        {
            string message = string.Empty;
            try
            {

                bool add = CartUtility.AddCurrentOrder(model);

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        public JsonResult AddOrder(int? tableId)
        {
            string message = string.Empty;
            bool add = false;
            bool IsUpdate = false;



            if (Session["IsUpdateMode"] != null)
            {
                IsUpdate = (bool)Session["IsUpdateMode"];
            }
            OrderViewModel order = new OrderViewModel();
            try
            {
             
                List<CartItemViewModel> CartItems = new List<CartItemViewModel>();

                if (tableId != null)
                {
                    order = CartUtility.CurrentOrder(tableId);
                    CartItems = CartUtility.GetCartItems(tableId);
                }
                else
                {
                    order = CartUtility.CurrentOrder();
                    CartItems = CartUtility.GetCartItems();

                }
                if (
                    order.IsPayment == false)
                    order.IsUpdateMode = true;
                else
                    order.IsUpdateMode = false;

                if (order.Id == 0)
                {
                  //order.PaymentTypeId = 1;

                    order.InvoiceNumber = WebUtil.GetInvoiceNumber();
                    order.CreationDate = DateTime.Now;
                    order.ModifyDate = DateTime.Now;
                    order = OrderServices.AddOrder(order, CartItems);
                    add = order.returnValue;
                }
                else
                {
                    add = OrderServices.UpdateOrder(order, CartItems);
                }
                if (add)
                {
                   order.massage = "Success";
                    //expire cookie
                    if (tableId != null)
                    {
                        string currentTable = WebUtil.CurrentTable + tableId;
                        string currentOrder = WebUtil.CurrentOrder + tableId;
                        if (Request.Cookies[currentTable] != null)
                        {
                            Response.Cookies[currentTable].Expires = DateTime.Now.AddDays(-1);
                        }
                        if (Request.Cookies[currentOrder] != null)
                        {
                            Response.Cookies[currentOrder].Expires = DateTime.Now.AddDays(-1);
                        }
                    }
                    else
                    {
                        if (Request.Cookies[WebUtil.CurrentItemsCookies] != null)
                        {
                            Response.Cookies[WebUtil.CurrentItemsCookies].Expires = DateTime.Now.AddDays(-1);
                        }
                        if (Request.Cookies[WebUtil.CurrentOrderCookies] != null)
                        {
                            Response.Cookies[WebUtil.CurrentOrderCookies].Expires = DateTime.Now.AddDays(-1);
                        }
                        if (Request.Cookies[WebUtil.UpdateOrderCookies] != null)
                        {
                            Response.Cookies[WebUtil.UpdateOrderCookies].Expires = DateTime.Now.AddDays(-1);
                        }
                        if (Request.Cookies[WebUtil.UpdateItemsCookies] != null)
                        {
                            Response.Cookies[WebUtil.UpdateItemsCookies].Expires = DateTime.Now.AddDays(-1);
                        }
                    }
                }
                else
                {
                    order.massage = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(order, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult Order_Void_Or_Complimentary(int? id, bool IsVoid, bool IsComplimentary, bool IsPayment, bool IsUpdateMode, string Reason = null)
        {
            string message = string.Empty;
            try
            {
                var add = OrderServices.Add_Order_Void_Or_Complimentary(id, IsVoid, IsComplimentary, IsPayment, IsUpdateMode, Reason);

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpPost]
        public JsonResult CurrentOrderReason(int id, string reason = null)
        {
            string message = string.Empty;
            try
            {
                bool add = OrderServices.AddOrderWithReason(id, reason);

                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return Json(message);
        }
        public ActionResult AllOrders()
        {
            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            if (user == null)
                return RedirectToAction("Login", new { Controller = "Account" });

            return View();
        }
        public ActionResult GetAllOrders()
        {
            var model = OrderServices.GetAllOrders();
            

            foreach (var item in model)
            {
                var models = OrderServices.GetCustomerById(Convert.ToInt32( item.NoOfGuest) );
                String NoOfGuest = models.CarNumber;

                item.CarNo = NoOfGuest;

            }




            return PartialView("_GetAllOrders", model);
        }
        [HttpPost]
        public JsonResult CloseOrder(int id)
        {
            string message = string.Empty;
            try
            {
                var close = OrderServices.CloseOrder(id);
                if (close)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpPost]
        public JsonResult OpenOrder(int id)
        {
            string message = string.Empty;
            try
            {
                var open = OrderServices.OpenOrder(id);
                if (open)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        public ActionResult OpenOrders()
        {
            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            if (user == null)
                return RedirectToAction("Login", new { Controller = "Account" });

            return View();
        }
        public ActionResult GetOpenOrders()
        {
            var model = OrderServices.GetOrdersWithOutPayment();
            foreach (var item in model)
            {
                var models = OrderServices.GetCustomerById(Convert.ToInt32(item.NoOfGuest));
               String  NoOfGuest = models.CarNumber;

                item.CarNo = NoOfGuest;

            }

            return PartialView("_GetOpenOrders", model);
        }
        public ActionResult DraftOrders()
        {
            var model = OrderServices.GetOrdersWithOutPayment();
            return PartialView(model);
        }
        public ActionResult PrintInvoice(int? id )
        {
            OrderViewModel order = new OrderViewModel();
            if (id >0)
            {
                order = OrderServices.GetOrderById(id ?? 0);
                if (order != null)
                {
                    order.OrderItems = OrderServices.GetOrderItemsByOrderId(order.Id);
                    var CustomerName = VendorServices.GetCustomerById(order.NoOfGuest ?? 0);
                    order.CustomerName = CustomerName.CustomerName;
                    order.CarNo = CustomerName.CarNumber;
                    order.Reading = CustomerName.Reading;
                    order.CreationDate =  DateTime.Now;


                    string APIKey = "6aa19b26151b66c20a34c4c09a3259383eb3a3b";

                    string receiver = "923114343115";
                    string sender = "8583";
                    string textmessage = "This is test SMS from VT API";
                    string jsonResponse = SendSMS(APIKey, receiver, sender, textmessage);
                    //string MyUsername = "923024653297";
                    //string MyPassword = "1234qwe1234";
                    //string MyApiKey = "923024653297-a554e6a1-40d5-473c-b8d1-7659c6ddb065"; //Your API Key At Sendpk.com
                    //string toNumber = "923114343115"; //Recepient cell phone number with country code
                    //string Masking = "MAC TEC"; //Your Company Brand Name
                    //string MessageText = "POS Invioce";
                   // string jsonResponse = SendSMS(MyApiKey, Masking, toNumber, MessageText, MyUsername, MyPassword);

                }

                return PartialView("_PrintInvoice", order);
            }
            return RedirectToAction("Login", new { area = "", Controller = "Account" });
        }


        //public static void Main()
        //{
        //    string MyApiKey = "923024653297-a554e6a1-40d5-473c-b8d1-7659c6ddb065"; //Your API Key At Sendpk.com
        //    string toNumber = "92xxxxxxxx"; //Recepient cell phone number with country code
        //    string Masking = "SMS Alert"; //Your Company Brand Name
        //    string MessageText = "SMS Sent using .Net";
        //    string jsonResponse = SendSMS(Masking, toNumber, MessageText, MyUsername, MyPassword);
        //    Console.Write(jsonResponse);
        //    //Console.Read(); //to keep console window open if trying in visual studio
        //}

        public static string SendSMS(string APIKey, string receiver, string sender, string textmessage)
        {
            String URI = "https://api.veevotech.com/sendsms?" +
            "hash=" + APIKey +
            "&receivenum=" + receiver +
            "&sendernum=" + sender +
            "&textmessage=" + Uri.UnescapeDataString(textmessage); // Visual Studio 10-15
            //"//&textmessage=" + System.Net.WebUtility.UrlEncode(textmessage);// Visual Studio 12
            try
            {
                WebRequest req = WebRequest.Create(URI);
                WebResponse resp = req.GetResponse();
                var sr = new System.IO.StreamReader(resp.GetResponseStream());
                return sr.ReadToEnd().Trim();
            }
            catch (WebException ex)
            {
                var httpWebResponse = ex.Response as HttpWebResponse;
                if (httpWebResponse != null)
                {
                    switch (httpWebResponse.StatusCode)
                    {
                        case HttpStatusCode.NotFound:
                            return "404:URL not found :" + URI;
                            break;
                        case HttpStatusCode.BadRequest:
                            return "400:Bad Request";
                            break;
                        default:
                            return httpWebResponse.StatusCode.ToString();
                    }
                }
            }
            return null;
        }
        //public static string SendSMS(string MyApiKey, string Masking, string toNumber, string MessageText, string MyUsername, string MyPassword)
        //{
        //    String URI = "https://sendpk.com" +
        //    "/api/sms.php?" +
        //    "api_key=" + MyApiKey +
        //    "&sender=" + Masking +
        //    "&mobile=" + toNumber +
        //    "&message=" + Uri.UnescapeDataString(MessageText); // Visual Studio 10-15
        //    //"//&message=" + System.Net.WebUtility.UrlEncode(MessageText);// Visual Studio 12
        //    try
        //    {
        //        WebRequest req = WebRequest.Create(URI);
        //        WebResponse resp = req.GetResponse();
        //        var sr = new System.IO.StreamReader(resp.GetResponseStream());
        //        return sr.ReadToEnd().Trim();
        //    }
        //    catch (WebException ex)
        //    {
        //        var httpWebResponse = ex.Response as HttpWebResponse;
        //        if (httpWebResponse != null)
        //        {
        //            switch (httpWebResponse.StatusCode)
        //            {
        //                case HttpStatusCode.NotFound:
        //                    return "404:URL not found :" + URI;
        //                    break;
        //                case HttpStatusCode.BadRequest:
        //                    return "400:Bad Request";
        //                    break;
        //                default:
        //                    return httpWebResponse.StatusCode.ToString();
        //            }
        //        }
        //    }
        //    return null;
        //}
        [HttpPost]
        public JsonResult PrintAllOrderDepartments(int id)
        {
            string message = string.Empty;
            try
            {
                var order = OrderServices.GetOrderById(id);
                var print = InvoicePrinter.PrintToSmallPrinter(order);
                if (print)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpPost]
        public JsonResult PrintKitchenOrder(int id)
        {
            string message = string.Empty;
            try
            {
                var order = OrderServices.GetOrderById(id);

                if (order != null)
                {
                    order.OrderItems = OrderServices.GetOrderItemsByOrderId(order.Id);
                }

                var print = InvoicePrinter.KitchenInoviceFormat(order, 1);
                if (print)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpPost]
        public JsonResult PrintBarOrder(int id)
        {
            string message = string.Empty;
            try
            {
                var order = OrderServices.GetOrderById(id);
                if (order != null)
                {
                    order.OrderItems = OrderServices.GetOrderItemsByOrderId(order.Id);
                }
                var print = InvoicePrinter.BarInoviceFormat(order, 2);
                if (print)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpPost]
        public JsonResult PrintDessertOrder(int id)
        {
            string message = string.Empty;
            try
            {
                var order = OrderServices.GetOrderById(id);
                if (order != null)
                {
                    order.OrderItems = OrderServices.GetOrderItemsByOrderId(order.Id);
                }
                var print = InvoicePrinter.DessertInoviceFormat(order, 3);
                if (print)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        [HttpGet]
        public ActionResult AddOrderFeedBack(int? orderId)
        {
            var user = Session[WebUtil.CURRENT_USER] as UserViewModel;
            if (user == null)
                return RedirectToAction("Login", new { Controller = "Account" });

            return PartialView("_AddOrderFeedBack");
        }

        [HttpPost]
        public JsonResult AddOrderFeedBack(OrderFeedbackViewModel model)
        {
            string message = string.Empty;
            try
            {
                bool add = OrderServices.AddOrderFeedback(model);
                if (add)
                {
                    message = "Success";
                }
                else
                {
                    message = "Error";
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(message);
        }
        #endregion
    }
}