using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportBackEnd.Core
{
   public class Preportnew
    {
        public int PRID { get; set; }
        public string PRNO { get; set; }
        public DateTime Date { get; set; }
        public string CreatedBy { get; set; }
        public string State { get; set; }
        public string Mode { get; set; }
        public string Dept { get; set; }
        public string Machine { get; set; }
        public string ItemType { get; set; }
        public string BusinessUnit { get; set; }
        public string Importance { get; set; }
        public string OrderType { get; set; }
        public string Purpose { get; set; }
        public string Notes { get; set; }
        public string CodeItem { get; set; }
        public string ItemDC { get; set; }
        public string Uint { get; set; }
        public decimal Quatntity { get; set; }
        public decimal Inv_Balance { get; set; }
        public DateTime RequiredDate { get; set; }
    }
}
