using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Moygolos.Controllers
{
  [HandleError]
  public class HomeController : Controller
  {
    public ActionResult Index()
    {
      return View();
    }

    [AcceptVerbs(HttpVerbs.Post)]
    public ActionResult AddVoice(string selVarId, string hUsername, string email)
    {
      return View("VoteResult");
    }

    [AcceptVerbs(HttpVerbs.Post)]
    public string GetResults()
    {
      return "<h3>Results!</h3>";
    }

    public ActionResult About()
    {
      return View();
    }
  }
}
