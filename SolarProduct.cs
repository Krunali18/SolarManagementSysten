using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Solar_Management_System.Models
{
    public class SolarProduct
    {
        public int id { get; set; }
        public string productname { get; set; }
        public string productimage { get; set; }
        public string productdescription { get; set; }
        public string productprice { get; set; }
        public string productnumber { get; set; }
    }
}