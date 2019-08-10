///Day 9_10 : ReadFile
///Created By: Pranit Chimurkar
///Date: 2019/08/02
using System;
using System.IO;
using System.Web.UI;

namespace Day9_10
{
    public partial class ReadFile : Page
    {
        string fileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ErrorButtonClick(object sender, EventArgs e)  //Function on Error Button Click
        {
            try
            {
                string path = file1.Text;
                fileName = Server.MapPath(path);
                str = File.OpenText(fileName);
                filedata.Text = str.ReadToEnd();
                str.Close();
            }
            catch (FileNotFoundException f)
            {
                filedata.Text = f.Message.ToString();//Exception if file not present
            }
            finally
            {
                fileName = null;
                str = null;
            }
        }
    }
}