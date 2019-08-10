///Day 9_10 : Page_Error _Event
///Created By: Pranit Chimurkar
///Date: 2019/08/05
using System;
using System.IO;

namespace Day9_10
{
    public partial class Page_event : System.Web.UI.Page
    {
        string fileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ErrorButtonClick1(object sender, EventArgs e)
        {
            try
            {
                string path = file1.Text;
                fileName = Server.MapPath(path);
                str = File.OpenText(fileName);
                filedata1.Text = str.ReadToEnd();
                str.Close();
            }
            catch (Exception)
            {
                Page_Error(sender, e);
            }
            finally
            {
                fileName = null;
                str = null;
            }
        }
        public void Page_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            Server.ClearError();
            Response.Write(AllMessage.strPageErrorEvent);
        }
    }
}