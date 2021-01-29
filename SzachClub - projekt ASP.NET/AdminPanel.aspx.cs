using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SzachClub___projekt_ASP.NET
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        private static string databaseDirectory = AppDomain.CurrentDomain.BaseDirectory + "App_Data\\Database1.mdf";
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + databaseDirectory + "; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void AddPostBtn(object sender, EventArgs e)
        {
            connection.Open();

            SqlCommand command;
            string title = txtTitle.Text;
            string user = Context.User.Identity.Name;
            string img;
            string description = txtDescription.Text;
            string insertData;

            fileGame.PostedFile.SaveAs(Server.MapPath(@"~\images\games\" + fileGame.FileName));
            img = "images/games/" + fileGame.FileName.ToString();

            insertData = "INSERT INTO posts_table VALUES(@title, @user, @img, @desc);";
            command = new SqlCommand(insertData, connection);
            command.Parameters.AddWithValue("@title", title);
            command.Parameters.AddWithValue("@user", user);
            command.Parameters.AddWithValue("@img", img);
            command.Parameters.AddWithValue("@desc", description);
            command.ExecuteNonQuery();

            LabelMessage.Text = "Dodano post o tytule: " + title;
            command.Dispose();
            connection.Close();
            Response.Redirect("AdminPanel.aspx");
        }

        protected void SelectPost(object sender, EventArgs e)
        {
            Application["Post_ID"] = GridView1.SelectedRow.Cells[1].Text;
            Application["Title"] = GridView1.SelectedRow.Cells[2].Text;
            Application["Image"] = GridView1.SelectedRow.Cells[4].Text;
            Application["Description"] = GridView1.SelectedRow.Cells[5].Text;

            Response.Redirect("EditPost.aspx");

        }
    }
}