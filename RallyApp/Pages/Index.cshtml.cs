using System.Data.Common;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using connect;
using race;
using Npgsql;
using Newtonsoft.Json;

namespace RallyApp.Pages;

public class IndexModel : PageModel
{
    public PSQLCon connect;

    public string[] Racers{get;set;}
    public string[] Specials{get;set;}
    public Rally MainRally{get;set;}
    private readonly ILogger<IndexModel> _logger;

    public IndexModel(ILogger<IndexModel> logger)
    {
        _logger = logger;
    }

    public void OnGet()
    {
        connect = new PSQLCon();
        using (var connection = new NpgsqlConnection(connect.ConnectionString))
        {
            MainRally=Rally.PSQLFetchAll(connection);
            string rallyJson = JsonConvert.SerializeObject(MainRally);
            ViewData["RallyJson"]=rallyJson;
        }
    }
}
