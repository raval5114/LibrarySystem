using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using LibrarySystem.ClassLibrary;

namespace LibrarySystem.Admin
{
    public partial class Add_Book : System.Web.UI.Page
    {
        String con = ConfigurationManager.ConnectionStrings["Library"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String path = Server.MapPath("~/Bookimage/" + FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(path);
            String title = booknametxt.Text;
            String author = authortxt.Text;
            String desc = descriptiontxt.Text;
            String bksf = shelftxt.Text;
            String category = categorytxt.Text;
            String status = statustxt.Text;
            String image = "~/Bookimage/" + FileUpload1.PostedFile.FileName;

            Bookinsert b1 = new Bookinsert();
            b1.connect(con);
            
          if( b1.insertbook(title,author,category,desc,bksf,image,status)==true)
            {
                Response.Write("<script>alert('Inserted')</script>");
            }
            //String title, String author,String category, String description,String booksf, String image)

        }
    }
}