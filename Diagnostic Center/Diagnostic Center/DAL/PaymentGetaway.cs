using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Diagnostic_Center.DAL
{
    public class PaymentGetaway
    {
        internal string SavePaymentInformation(Models.PaymentInfo aPaymentInfo)
        {
            string Query = @"INSERT INTO [Payment]
           ([PatientID],[PayAmount])
     VALUES
           ('" + aPaymentInfo.ID + "','" + aPaymentInfo.PaymentAmount.Replace("'","") + "')";
            int rowEffect = DataTransfection.ExecuteNonQuery(Query);
            if (rowEffect > 0)
            {
                return "Record is/are Saved Sucessfully....!!";
            }
            else
                throw new Exception("Record Save Failed....!!! ");
        }
    }
}