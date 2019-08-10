using System;

namespace Day9_10
{
    public partial class ErrorPage : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorMessage.Text = AllMessage.strAppErrorEvent;
        }
    }
}