using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SzachClub___projekt_ASP.NET
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        private string id, title, image, description;
        private static string databaseDirectory = AppDomain.CurrentDomain.BaseDirectory + "App_Data\\Database1.mdf";
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + databaseDirectory + "; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Application["Post_ID"].ToString();
            title = Application["Title"].ToString();
            image = Application["Image"].ToString();
            description = Application["Description"].ToString();
            
            if (!Page.IsPostBack)
            {
                LabelTitle.Text = title;
                txtTitle.Text = title;
                LabelGameImage.Text = image;
                txtDescription.Text = description;
            }
           

        }

        protected void DeletePostBtn(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command;
            string delete = "DELETE FROM posts_table WHERE id = @id;";
            command = new SqlCommand(delete, connection);
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();

            command.Dispose();
            connection.Close();
            Response.Redirect("AdminPanel.aspx");
        }

        protected void EditPostBtn(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command;
            string update = "UPDATE posts_table SET tytul = @title, obraz = @image, opis = @description WHERE id = @id;";
            string title = txtTitle.Text;
            string desc = txtDescription.Text;
            command = new SqlCommand(update, connection);
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@title", title);

            if (fileGame.HasFile)
            {
                fileGame.PostedFile.SaveAs(Server.MapPath(@"~\images\games\" + fileGame.FileName));
                command.Parameters.AddWithValue("@image", "images/games/" + fileGame.FileName.ToString());
            }
            else
            {
                command.Parameters.AddWithValue("@image", image);
            }

            command.Parameters.AddWithValue("@description", desc);
            command.ExecuteNonQuery();
            command.Dispose();
            connection.Close();
            Response.Redirect("AdminPanel.aspx");
        }


    }
}