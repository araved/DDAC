using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;


namespace WebApplication2
{
    public partial class UBrowseCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString =
                "DefaultEndpointsProtocol=https;AccountName=eproacademy;AccountKey=hPxSJNEtHjXGHDSdCk8KLrAUm1kYnKV0LaMS1nrdCZdQJkWCu/RR9CJCwbqNJV3wM34NZ4t79nSP73Q8+xPb4w==;EndpointSuffix=core.windows.net";
            try
            {
                var container = new BlobContainerClient(connectionString, "epro-video-repo");
                container.CreateIfNotExists();
                var blobService = new BlobServiceClient(connectionString);
                var contClient = blobService.GetBlobContainerClient("epro-video-repo");
                
                foreach (BlobItem blobItem in container.GetBlobs())
                {
                    var blob = blobItem.Name;
                    string bloburl = contClient.GetBlobClient(blobItem.Name).Uri.ToString();
                    AddCourseList(blob,bloburl);
                }

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }
        private void AddCourseList(string course, string link)
        {
            var li = new HtmlGenericControl("li");
            menu.Controls.Add(li);
            
            var anchor = new HtmlGenericControl("a");
            anchor.Attributes.Add("href", link);
            anchor.InnerText = course;
            li.Controls.Add(anchor);



        }
     
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/SignIn.aspx");
        }
    }
}