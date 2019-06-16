using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Bemax.Models;

namespace Bemax.Controllers
{
    public class BaseController : Controller
    {
        protected BemaxEntities db;

        public BaseController()
        {
            db = new BemaxEntities();
        }
    }
}