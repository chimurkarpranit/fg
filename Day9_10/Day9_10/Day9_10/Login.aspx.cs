///Day 9_10 : Login
///Created By: Pranit Chimurkar
///Date: 2019/08/05
using System;
using System.Text;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace Day9_10
{
    public partial class Login : System.Web.UI.Page
    {
        StringBuilder sb;
        public string SqlQuery { get; set; }

        string conString = ConfigurationManager.ConnectionStrings["DBConnection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelInvalid.Visible = false; //visibility false
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            sb = new StringBuilder();
            try
            {
                MySqlConnection con = new MySqlConnection(conString);
                sb = new StringBuilder("select * from employees where Firstname = '"+usrname.Text+"' and LastName = '"+pswd.Text+"'");
                SqlQuery = sb.ToString();
                MySqlDataAdapter sda = new MySqlDataAdapter(SqlQuery, conString);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["UserName"] = usrname.Text; //Username stored in Session
                    Session["PassWord"] = pswd.Text; //PassWord stored in Session
                    Response.Redirect("Secure.aspx");
                }
                else
                {
                    LabelInvalid.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}