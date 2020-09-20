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
            string containerName = "Result";
            var connectionString =
                "AccountEndpoint=https://epro-cosmos-db.documents.azure.com:443/;AccountKey=NNlqR1mV3fdtkNMd9Veb4Nypys3bt13RcR4cTOHoZFrDw9dtooNJME3PP6Kuul9ND3iY4oCClRmmR3dD56YENQ==;;";
            CosmosClient client = new CosmosClient(connectionString: "eProAcademyCosmosDB");
            Database database = await client.CreateDatabaseIfNotExistsAsync(databaseName);
            Container container = await database.CreateContainerIfNotExistsAsync(containerName, "/name");

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