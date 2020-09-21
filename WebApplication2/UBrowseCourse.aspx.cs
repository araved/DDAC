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
                "DefaultEndpointsProtocol=https;AccountName=eproacademystorage;AccountKey=UstVl7rHTb9fYytuu9VwwZOkofuUrFjiv2EBq8bMTfnRopvOxIxfFURHe2XmqMiEXCu4H8xmEUHfwSPhS1b7Rw==;EndpointSuffix=core.windows.net";
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