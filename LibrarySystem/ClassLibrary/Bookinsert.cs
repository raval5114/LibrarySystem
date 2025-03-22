using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace LibrarySystem.ClassLibrary
{
    public class Bookinsert
    {
        String connection_string;

        public void connect(String connect)
        {
            connection_string = connect;

        }
        
        
        public bool insertbook(String title,String author,String category,String description,String booksf,String image,String status)
        {
            bool value = false;
            using (SqlConnection con=new SqlConnection(connection_string))
            {
                String query = "insert into Books values(@title,@author,@category,@status,@des,@bsf,@image)";
                try
                {
                    using (SqlCommand cmd=new SqlCommand(query,con))
                    {
                        cmd.Parameters.AddWithValue("@title",title);
                        cmd.Parameters.AddWithValue("@author",author);
                        cmd.Parameters.AddWithValue("@category",category);
                        cmd.Parameters.AddWithValue("@status", status);
                        cmd.Parameters.AddWithValue("@des",description);
                        cmd.Parameters.AddWithValue("@bsf", booksf);
                        cmd.Parameters.AddWithValue("@image",image);
                        
                        con.Open();
                        int result = cmd.ExecuteNonQuery();
                        if(result>0)
                        {
                            value = true;
                        }
                    }
                }
                catch(Exception e)
                {
                    Debug.Write(e.Message);
                }
            }
            return value;
        }
        public DataTable disbussinessbook()
        {
            SqlConnection con = new SqlConnection(connection_string);
            String query = "select Title,Author,Category,Status,Booksf,Bookimage,BookID from Books";
            SqlDataAdapter adpt = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Debug.WriteLine("It has data");
            }
            return dt;
        }
    }
}