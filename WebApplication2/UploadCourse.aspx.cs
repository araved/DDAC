using System;
using System.Configuration;
using System.IO;
using System.Web;
using System.Web.UI;
using Azure.Storage.Blobs;
using Microsoft.Azure.Cosmos.Table;


namespace WebApplication2
{
    public partial class UploadCourse : Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdminlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/SignIn.aspx");
        }
        protected void BtnUpload_Click(object sender, EventArgs e)
        {

            var connectionString =
                "DefaultEndpointsProtocol=https;AccountName=eproacademystorage;AccountKey=UstVl7rHTb9fYytuu9VwwZOkofuUrFjiv2EBq8bMTfnRopvOxIxfFURHe2XmqMiEXCu4H8xmEUHfwSPhS1b7Rw==;EndpointSuffix=core.windows.net";
            try
            {
               
                var container = new BlobContainerClient(connectionString, "epro-video-repo");
                var file = file_upload.PostedFile;
                var blob = container.GetBlobClient(file.FileName);
                file.SaveAs(System.Web.Hosting.HostingEnvironment.MapPath("/temp") + file.FileName); 
                 using (Stream upload = File.OpenRead(System.Web.Hosting.HostingEnvironment.MapPath("/temp") + file.FileName))
                 {
                     blob.Upload(upload);
                     uploadStatus.Text = "Upload Successful!";
                 }

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }
    }
}