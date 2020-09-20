﻿using System;
using System.Net;
using System.Threading.Tasks;
using System.Web.UI;
using Microsoft.Azure.Cosmos;

namespace WebApplication2
{
    public partial class Contact : System.Web.UI.Page
    {
     
        
     
        string databaseName = "ContactUs";
         string containerName = "Result";
        static string connectionString =
            "AccountEndpoint=https://epro-cosmo-db.documents.azure.com:443/;AccountKey=QNMbwwCue0beRQovlFGPkFZRkSKmiC1UAnLw3xHIfjRcvq8vbT9DZcRSe2eohYWHGUFWDH7f5fozOupHAArQ7Q==;";
        CosmosClient client = new CosmosClient(connectionString:"eProAcademyCosmosDB");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected async void btnSend_Click(object sender, EventArgs e)
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

            lblmsg.Text = "Thank you for your enquiry!";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            clr();
           
        }

        public void clr()
        {
            txtname.Text = string.Empty;
            txtmessage.Text = string.Empty;
        }

    }
}