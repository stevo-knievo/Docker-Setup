class WeatherForecast {
  String date;
  int temperatureC;
  String? summary;

  WeatherForecast(
    this.date,
    this.temperatureC,
    this.summary
  );

  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    return WeatherForecast(
      json['date'],
      json['temperatureC'],
      json['summary']
    );
  }
}