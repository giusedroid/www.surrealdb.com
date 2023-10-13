using Microsoft.AspNetCore.Mvc;

namespace SurrealDbWeatherApi.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
	private const string Table = "weatherForecast";

	private readonly ISurrealDbClient _surrealDbClient;

	public WeatherForecastController(ISurrealDbClient surrealDbClient)
	{
		_surrealDbClient = surrealDbClient;
	}

	[HttpGet]
	[Route("/")]
	public Task<List<WeatherForecast>> GetAll(CancellationToken cancellationToken)
	{
		return _surrealDbClient.Select<WeatherForecast>(Table, cancellationToken);
	}

	[HttpPost]
	[Route("/")]
	public Task<WeatherForecast> Create(CreateWeatherForecast data, CancellationToken cancellationToken)
	{
		var weatherForecast = new WeatherForecast
		{
			Date = data.Date,
			Country = data.Country,
			TemperatureC = data.TemperatureC,
			Summary = data.Summary
		};

		return _surrealDbClient.Create(Table, weatherForecast, cancellationToken);
	}

    // ...
	// Other methods omitted for brevity
}

public class CreateWeatherForecast
{
	public DateTime Date { get; set; }
	public string? Country { get; set; }
	public int TemperatureC { get; set; }
	public string? Summary { get; set; }
}
