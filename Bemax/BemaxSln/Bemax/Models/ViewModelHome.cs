using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bemax.Models
{
    public class ViewModelHome
    {
        public List<Models.HomeMenu> Menu { get; set; }
        public List<Models.HomeBgSlider> BgSlider { get; set; }
        public List<Models.HomeDescription> Description { get; set; }
        public List<Models.HomeCards> Cards { get; set; }
        public List<Models.HomeBemax> Bemax { get; set; }
        public List<Models.HomeProjects> Projects { get; set; }
        public List<Models.HomeChoose> Choose { get; set; }
        public List<Models.HomeWork> Work { get; set; }
        public List<Models.HomeBlog> Blog { get; set; }
        public List<Models.HomeTest> Test { get; set; }
        public List<Models.HomeLogo> Logo { get; set; }
        public List<Models.HomeFeatures> Features { get; set; }
        public List<Models.HomeContact> Contact { get; set; }
    }
}