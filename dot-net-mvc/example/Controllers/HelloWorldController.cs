using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using dot_net_mvc.Models;

namespace dot_net_mvc.Controllers;

public class HelloWorldController : Controller
{
    private readonly ILogger<HelloWorldController> _logger;

    public HelloWorldController(ILogger<HelloWorldController> logger)
    {
        _logger = logger;
    }

    [HttpGet("hello-world")]
    public String Index()
    {
        return "Hello World (dotnetmvcsvc)";
    }
}
