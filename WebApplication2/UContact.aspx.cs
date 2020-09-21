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
        string databaseName = "ContactUs";
        string containerName = "Result";
        static string connectionString =
            "AccountEndpoint=https://eprocosmosdb.documents.azure.com:443/;AccountKey=95g4GwT0DrlQMuvahjNAccgfpCyyCtJ6sJoBdjeh7sck3X1sn70JoShHWmFhQwsJCibvwP27LoLH9BhecUNhEg==;";
        CosmosClient client = new CosmosClient(connectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void  btnSend_Click(object sender, EventArgs e)
        {
            
           await InputData();
        }

        private  async Task InputData()
        {
            Database _database = await client.CreateDatabaseIfNotExistsAsync(databaseName);
            Container _container = await _database.CreateContainerIfNotExistsAsync(containerName, "/name");
            var contactUs = new contactus
            {
                id = Guid.NewGuid().ToString(),
                name = txtname.Text,
                enquiry = DDLRT.SelectedValue,
                message = txtmessage.Text
            };
            ItemResponse<contactus> contactusResponse =
                await _container.CreateItemAsync<contactus>(contactUs, new PartitionKey(contactUs.name));

            lblError.Text = "Thank you for your enquiry!";
            lblError.ForeColor = System.Drawing.Color.Green;
            clr();
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/SignIn.aspx");
        }
        public void clr()
        {
            txtname.Text = string.Empty;
            txtmessage.Text = string.Empty;
        }
    }
}