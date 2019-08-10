///Day 9_10 : Application Error
///Created By: Pranit Chimurkar
///Date: 2019/08/05
using System;
using System.IO;

namespace Day9_10
{
    public partial class Application : System.Web.UI.Page
    {
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ErrorButtonClick3(object sender, EventArgs e)
        {
             string path = file3.Text;
             FileName = Server.MapPath(path);
             str = File.OpenText(FileName);
             filedata3.Text = str.ReadToEnd();
             str.Close();
        }
    }
}