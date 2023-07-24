using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RepBackEnd.Core
{
    public class ReportGrn
    {
        public int ID { get; set; } // s
        public DateTime GRN_DATE { get; set; } //s
        public string PO_NUM { get; set; } //s
        public string CREATED_BY { get; set; }//s
        public string GRN_STATE { get; set; }//s
        public string VENDEOR_CODE { get; set; }//s
        public string VENDEOR_NAME { get; set; }//s
        public string WH { get; set; }//s
        public string PL { get; set; }//s
        public int SERIAL { get; set; }//s
        public int PRlineNO { get; set; }//s
        public int ITM_ID { get; set; }
        public string ITM_DIS { get; set; }
        public int UIMID { get; set; }
        public decimal Qty { get; set; }
        public string LotNO { get; set; }
        public DateTime ExpiryDate { get; set; }

    }
}
