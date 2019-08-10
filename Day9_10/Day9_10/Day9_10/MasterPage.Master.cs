using System;

namespace Day9_10
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MasterLabel.Text = "Welcome to my application";
        }
    }
}