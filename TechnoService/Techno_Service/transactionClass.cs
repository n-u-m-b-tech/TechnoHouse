using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techno_Service
{
    public class transactionClass
    {
       public int ProId,clientId,PaymentId,DeliveryID, OrderId, OrderNumber, Quantity;
       public  Decimal price, Total;
       public  Double tax;
       public String DeliveryStatus, PayemntStatus,Payementtype,phone,companyName,CompanyDetails;
       public  DateTime ShipDate, PaymentDate, OrderDate;


        public int GenNumber()
        {
            Random rand = new Random();
            return rand.Next(13268, 93652);
        }
    }

    
}