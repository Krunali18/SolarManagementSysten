using Solar_Management_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solar_Management_System.Client
{
    public partial class SolarProducts : System.Web.UI.Page
    {
     //   Model1 model = new Model1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<SolarProduct> GetProducts([QueryString("id")] int? categoryId)
        {
            var _db = new Solar_Management_System.Database1Entities1 ();
            IQueryable<SolarProduct> query = (IQueryable<SolarProduct>)_db.products;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.id == categoryId);
            }
            return query;
        }
    }
}