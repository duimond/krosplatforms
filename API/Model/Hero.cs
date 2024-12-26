using Microsoft.AspNetCore.Http.HttpResults;
using System.Xml.Linq;

namespace API.Model
{
    public class Hero
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string firstAppearance { get; set; }
        public string creator { get; set; }
    }
}
