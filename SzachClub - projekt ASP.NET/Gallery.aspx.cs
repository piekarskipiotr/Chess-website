using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SzachClub___projekt_ASP.NET
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        private static string databaseDirectory = AppDomain.CurrentDomain.BaseDirectory + "App_Data\\Database1.mdf";
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="+ databaseDirectory + "; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)        {
            
            connection.Open();
            
            SqlCommand command;
            SqlDataReader dataReader;
            string getAll = "SELECT * FROM posts_table;"; 

            command = new SqlCommand(getAll, connection);
            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                gamesContainer.InnerHtml = "<div class='card'>" +
                    "<h2 class='title'>" + dataReader.GetValue(1) + "</h2>" +
                    "<span>Autor: " + dataReader.GetValue(2) + "</span>" +
                    "<hr class='custom-hr'> <div class='text-center'><img src='" + dataReader.GetValue(3)+"' width='70%'/></div>" +
                    "<p>"+dataReader.GetValue(4)+"</p>" +
                    "</div>" + gamesContainer.InnerText;

            }


            command.Dispose();
            dataReader.Close();
            connection.Close();



        }

    }
}