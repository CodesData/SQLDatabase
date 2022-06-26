using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SQL_3
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection MyConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (MyConnection.State == ConnectionState.Open)
            {
                MyConnection.Close();
            }
            MyConnection.Close();
            DisplayData();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string Insert_query = "INSERT INTO tblUsers VALUES('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEMail.Text + "')";
            SqlCommand cmd = new SqlCommand(Insert_query, MyConnection);
            cmd.ExecuteNonQuery();
            MyConnection.Close();

            ClearData();
            DisplayData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string Delete_query = "DELETE FROM tblUsers WHERE UserName='" + txtUserName.Text + "'";
            SqlCommand cmd = new SqlCommand(Delete_query, MyConnection);
            cmd.ExecuteNonQuery();
            MyConnection.Close();

            ClearData();
            DisplayData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string Update_query = "UPDATE tblUsers SET UserName='" + txtUserName.Text + "', Password='" + txtPassword.Text + "', EMail='" + txtEMail.Text + "' WHERE Id=" + Convert.ToInt32(txtUpdate.Text) + "";
            SqlCommand cmd = new SqlCommand(Update_query, MyConnection);
            cmd.ExecuteNonQuery();
            MyConnection.Close();

            ClearData();
            DisplayData();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearData();
            DisplayData();
        }

        public void ClearData()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtEMail.Text = "";
            txtUpdate.Text = "";
        }

        public void DisplayData()
        {
            MyConnection.Open();
            string DisplayData_query = "SELECT * FROM tblUsers";
            SqlCommand Mycmd = new SqlCommand(DisplayData_query, MyConnection);
            Mycmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(Mycmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            MyConnection.Close();
        }
    }
}