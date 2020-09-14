using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;


namespace WebApplication2
{
    public partial class BrowseCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString =
                "DefaultEndpointsProtocol=https;AccountName=eprostorage;AccountKey=l7ys22jEl41uNxioYpYWflYYwia8nVSStDb4SkjSTftU1wxHLvwnLOmOx1D9tiFo/gknyKWPV+i9WUWPPQBRrA==;EndpointSuffix=core.windows.net";

            try
            {
                var container = new BlobContainerClient(connectionString, "epro-video-repo");
                

                foreach (BlobItem blobItem in container.GetBlobs())
                {
                    var blob = blobItem.Name;
                    AddCourseList(blob);
                }

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }
        private void AddCourseList(string course)
        {
            var li = new HtmlGenericControl("li");
            li.InnerText = course;
            menu.Controls.Add(li);



            
        }
     
        
    }
}