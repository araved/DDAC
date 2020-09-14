using Newtonsoft.Json;

namespace WebApplication2
{
    public class contactus
    {
        [JsonProperty(PropertyName = "id")] 
        public string id { get; set; }
        public string name { get; set; }
        public string enquiry { get; set; }
        public string message { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}