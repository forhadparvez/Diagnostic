using Diagnostic_Center.DAL;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace Diagnostic_Center.BLL
{
    public class PaymentManager
    {
        TestRequestManager aTestRequestManager = new TestRequestManager();
        PaymentGetaway aPaymentGetaway = new PaymentGetaway();
        internal string  SavePaymentInformation(Models.PaymentInfo aPaymentInfo)
        {
            return aPaymentGetaway.SavePaymentInformation(aPaymentInfo);
        }

        internal void GetShowMoneyReceiptReport(iTextSharp.text.Document document,string ID,string PayAmt)
        {
            DataTable dtMst = aTestRequestManager.GetShowPatientTest(ID);
            if (dtMst.Rows.Count > 0)
            {
                

                PdfPCell cell;
                float[] titwidth = new float[1] { 100 };
                PdfPTable dth = new PdfPTable(titwidth);
                dth.WidthPercentage = 100;

                cell = new PdfPCell(FormatHeaderPhrase("Money Receipt"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                dth.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("  "));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                dth.AddCell(cell);
                document.Add(dth);

                float[] width1 = new float[4] { 40, 5, 35, 20 };
                PdfPTable pdftbl = new PdfPTable(width1);
                pdftbl.WidthPercentage = 100;

                cell = new PdfPCell(FormatHeaderPhrase("Patient ID"));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);

                cell = new PdfPCell(FormatHeaderPhrase(":"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);

                cell = new PdfPCell(FormatHeaderPhrase(dtMst.Rows[0]["PatientID"].ToString()));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 2;
                pdftbl.AddCell(cell);

                cell = new PdfPCell(FormatHeaderPhrase("Patient Name"));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(":"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(dtMst.Rows[0]["PatientName"].ToString()));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 2;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Mobile Number"));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(":"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(dtMst.Rows[0]["Mobile"].ToString()));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.Colspan = 2;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);

                cell = new PdfPCell(FormatHeaderPhrase("Date Of Birth "));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(":"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(dtMst.Rows[0]["DOB"].ToString()));
                cell.HorizontalAlignment = 0;
                cell.VerticalAlignment = 1;
                cell.Colspan = 2;
                cell.BorderWidth = 0f;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase(""));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.FixedHeight = 10f;
                cell.Colspan = 4;
                pdftbl.AddCell(cell);

                cell = new PdfPCell(FormatHeaderPhrase("ID"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Test Name"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                cell.Colspan = 2;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Fee"));
                cell.HorizontalAlignment = 1;
                cell.VerticalAlignment = 1;
                pdftbl.AddCell(cell);
                DataTable dddt = aTestRequestManager.GetShowRequestPatientTestDetailsReport(ID);
                foreach (DataRow dr in dddt.Rows)
                {
                    cell = new PdfPCell(FormatHeaderPhrase(dr["ID"].ToString()));
                    cell.HorizontalAlignment = 1;
                    cell.VerticalAlignment = 1;
                    pdftbl.AddCell(cell);
                    cell = new PdfPCell(FormatHeaderPhrase(dr["TestName"].ToString()));
                    cell.HorizontalAlignment = 1;
                    cell.VerticalAlignment = 1;
                    cell.Colspan = 2;
                    pdftbl.AddCell(cell);
                    cell = new PdfPCell(FormatHeaderPhrase(dr["Fee"].ToString()));
                    cell.HorizontalAlignment = 1;
                    cell.VerticalAlignment = 1;
                    pdftbl.AddCell(cell);
                }
                cell = new PdfPCell(FormatHeaderPhrase("Total Fee : " + dtMst.Rows[0]["Fee"].ToString()));
                cell.HorizontalAlignment = 2;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 4;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Paid Amount : " + dtMst.Rows[0]["PayAmount"].ToString()));
                cell.HorizontalAlignment = 2;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 4;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Due Amount : " + dtMst.Rows[0]["Due"].ToString()));
                cell.HorizontalAlignment = 2;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 4;
                pdftbl.AddCell(cell);
                cell = new PdfPCell(FormatHeaderPhrase("Now Pay Amount : " + PayAmt));
                cell.HorizontalAlignment = 2;
                cell.VerticalAlignment = 1;
                cell.BorderWidth = 0f;
                cell.Colspan = 4;
                pdftbl.AddCell(cell);

                document.Add(pdftbl);
            }
            else
            {
                throw new Exception("Not Found.......!!!!!!!!");
            }
        }
        private static Phrase FormatHeaderPhrase(string value)
        {
            return new Phrase(value, FontFactory.GetFont(FontFactory.TIMES_ROMAN, 10, iTextSharp.text.Font.NORMAL));
        }
    }
}