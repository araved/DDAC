using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Azure.Cosmos;

namespace WebApplication2
{
    public partial class UContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void  btnSend_Click(object sender, EventArgs e)
        {
           await InputData();
        }

        private  async Task InputData()
        {
           
            var databaseName = "epro-cosmo-db";
            var connectionString =
                "AccountEndpoint=https://epro-cosmo-db.documents.azure.com:443/;AccountKey=QNMbwwCue0beRQovlFGPkFZRkSKmiC1UAnLw3xHIfjRcvq8vbT9DZcRSe2eohYWHGUFWDH7f5fozOupHAArQ7Q==;";
            var client = new CosmosClient(connectionString);
            Database database = await client.CreateDatabaseIfNotExistsAsync(databaseName);
            Container container = await database.CreateContainerIfNotExistsAsync(
                "Result", "/result", 400);
            dynamic result = new {id = Guid.NewGuid().ToString(), partitionkeyPath = DDLRT.SelectedValue, name = txtname.Text, message = txtmessage.Text};
            ItemResponse<dynamic> response = await container.CreateItemAsync(result);
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/SignIn.aspx");
        }
    }
}