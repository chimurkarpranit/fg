///Day 9_10 : Page_Error _Event
///Created By: Pranit Chimurkar
///Date: 2019/08/05
using System;
using System.IO;

namespace Day9_10
{
    public partial class PageEventModified : System.Web.UI.Page
    {
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Page_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError().GetBaseException();        
            Response.Redirect(AllMessage.errorPageURL.ToString());
            Server.ClearError();
        }
        protected void ErrorButtonClick2(object sender, EventArgs e)
        {
            string path = file1.Text;
            FileName = Server.MapPath(path);
            str = File.OpenText(FileName);
            filedata2.Text = str.ReadToEnd();
            str.Close();
        }        
    }
}