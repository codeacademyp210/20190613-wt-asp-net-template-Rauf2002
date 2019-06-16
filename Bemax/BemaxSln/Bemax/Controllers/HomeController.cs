using Bemax.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bemax.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            ViewModelHome model = new ViewModelHome();

            model.Bemax = db.HomeBemax.ToList();
            model.BgSlider = db.HomeBgSlider.ToList();
            model.Blog = db.HomeBlog.ToList();
            model.Cards = db.HomeCards.ToList();
            model.Choose = db.HomeChoose.ToList();
            model.Contact = db.HomeContact.ToList();
            model.Description = db.HomeDescription.ToList();
            model.Features = db.HomeFeatures.ToList();
            model.Logo = db.HomeLogo.ToList();
            model.Menu = db.HomeMenu.ToList();
            model.Projects = db.HomeProjects.ToList();
            model.Test = db.HomeTest.ToList();
            model.Work = db.HomeWork.ToList();
            return View(model);
        }
    }
}