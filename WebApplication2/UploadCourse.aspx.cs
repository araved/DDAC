using System;
using System.IO;
using System.Web;
using System.Web.UI;
using Azure.Storage.Blobs;


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
                "DefaultEndpointsProtocol=https;AccountName=eprostorage;AccountKey=l7ys22jEl41uNxioYpYWflYYwia8nVSStDb4SkjSTftU1wxHLvwnLOmOx1D9tiFo/gknyKWPV+i9WUWPPQBRrA==;EndpointSuffix=core.windows.net";
            try
            {
   
                var container = new BlobContainerClient(connectionString, "epro-video-repo");
                var file = file_upload.PostedFile;
                var blob = container.GetBlobClient(file.FileName);
                file.SaveAs("temp/" + file.FileName); 
                 using (Stream upload = File.OpenRead("temp/" + file.FileName))
                 {
                     blob.Upload(upload);
                     File.Delete("temp/"+file.FileName);
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