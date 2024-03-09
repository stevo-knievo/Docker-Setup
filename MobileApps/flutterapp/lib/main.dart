import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/weather_forecast.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<WeatherForecast>> dataFuture;

  @override
  void initState() {
    super.initState();

    print('Constants.apiKey (API_KEY): ${Constants.apiKey}');
    print('Constants.password (PASSWORD): ${Constants.password}');
    print('Constants.isProduction (dart.vm.product): ${Constants.isProduction}');
    print('Constants.baseAddress (BASE_ADDRESS): ${Constants.baseAddress}');

    dataFuture = _fetchWeatherForecast();
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: dataFuture, // _fetchWeatherForecast(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return createListView(context, snapshot);
            }
        }
      },
    );

    return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const Text('Environment Variables', style: TextStyle(fontSize: 20)),
              const Divider(height: 20.0,),
              const Text('API_KEY: ${Constants.apiKey}'),
              const Text('PASSWORD: ${Constants.password}'),
              const Text('dart.vm.product: ${Constants.isProduction}'),
              Text('BASE_ADDRESS: ${Constants.baseAddress}'),
              const Divider(height: 20.0,),
              const Text('Weather Forecast', style: TextStyle(fontSize: 20)),
              Expanded(child: futureBuilder)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _reloadData,
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
        );
    }

  // https://www.youtube.com/watch?v=Pp3zoNDGZUI
  void _reloadData() {
    print('_reloadData');
    setState(() {
      dataFuture = _fetchWeatherForecast();
    });
  }

  // https://jsonplaceholder.typicode.com/posts
  // https://jsonplaceholder.typicode.com/albums/1
  Future<List<String>> _getData() async {
    var values = <String>[];
    values.add("Horses");
    values.add("Goats");
    values.add("Chickens");

    // throw new Exception("Danger Will Robinson!!!");

    await Future.delayed(const Duration(seconds: 5));

    return values;
  }

  Future<List<WeatherForecast>> _fetchWeatherForecast() async {
    print('call api WeatherForecast');
    List<WeatherForecast> result = [];  
    final response = await http.get(Uri.parse('${Constants.baseAddress}/weatherforecast'));
    
    // print('Future.delayed..');
    // await Future.delayed(const Duration(milliseconds: 300));
    // await Future.delayed(const Duration(seconds: 3));

    // throw new Exception("Dummy Error");

    print('called api WeatherForecast response.statusCode: ${response.statusCode}');
    if (response.statusCode == 200) {
      jsonDecode(response.body).forEach((element) {
          result.add(WeatherForecast.fromJson(element));
        });
      return result;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load WeatherForecast');
    }
  }

  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<WeatherForecast> values = snapshot.data;
    return ListView.builder(
        itemCount: values.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(values[index].summary ?? 'No summary'),
              ),
              const Divider(height: 2.0,),
            ],
          );
        },
    );
  }
}
