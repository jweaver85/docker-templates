var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/hello-world/", () => "Hello World!");

app.Run();
