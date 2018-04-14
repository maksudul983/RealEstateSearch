using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    public class Property
    {
        public string Type { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
        public int NoOfBedRoom { get; set; }
        public int NoOfBathRoom { get; set; }
        public double Price { get; set; }
        public double Lat { get; set; }
        public double Long { get; set; }
    }
}
