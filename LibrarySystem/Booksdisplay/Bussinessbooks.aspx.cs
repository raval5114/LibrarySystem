using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using LibrarySystem.ClassLibrary;

namespace LibrarySystem.Booksdisplay
{
    public partial class Bussinessbooks : System.Web.UI.Page
    {
        String con = ConfigurationManager.ConnectionStrings["Library"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bookinsert b1 = new Bookinsert();
                b1.connect(con);
                DataTable dt = new DataTable();

                dt = b1.disbussinessbook();
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
           
        }
    }
}