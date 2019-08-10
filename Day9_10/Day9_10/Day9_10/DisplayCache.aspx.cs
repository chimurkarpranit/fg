///Day 9_10 : Cache Object Use
///Created By: Pranit Chimurkar
///Date: 2019/08/05
using System;
using System.Web.Caching;

namespace Day9_10
{
    public partial class DisplayCache : System.Web.UI.Page
    {
        CacheDependency cache1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if ((Cache["name"] as string) != null && (Cache["version"] as string) != null)
                {
                    Response.Write("Browser Name: " + Server.HtmlEncode(Cache["name"] as string) + "<br/>");//Browser name
                    Response.Write("Browser Version: " + Server.HtmlEncode(Cache["version"] as string) + "<br/>");//Version                    
                }
                if ((Cache["currentdate"] as string) != null)
                {
                    Response.Write("Current Date: " + Server.HtmlEncode(Cache["currentdate"] as string) + "<br/>");//Date
                }
                if ((Cache["name"] as string) == null && (Cache["Version"] as string) == null && (Cache["currentdate"] as string) == null)
                {
                    Response.Write("Cache is Empty");//Null Cache Objects 
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void UpdateDate(object sender, EventArgs e)
        {
            try
            {
                Cache.Insert("currentdate", DateTime.Now.Date.AddDays(0).ToString("d"));
                string[] cacheKeys = { "currentdate" };
                cache1 = new CacheDependency(null, cacheKeys);
                Cache.Insert("name", cache1);
                Cache.Insert("version", cache1);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}