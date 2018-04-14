using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    public class BuyerChoice
    {
        public string Type { get; set; }
        public double Area { get; set; }
        public double MaximumBudget { get; set; }
        public string PrefferedLocation { get; set; }
        public int NoOfBedRoom { get; set; }
        public int NoOfBathRoom { get; set; }
        public string ContactAddress { get; set; }
        public string Email { get; set; }
    }
}
