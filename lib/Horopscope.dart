import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'HoroscopeDetails.dart';
class Horoscope {


  static Future<DailyHoroscope> getDailyHoroscope(String zodiacSign) async {
    final response =
    await http.get('https://horoscope-api.herokuapp.com/horoscope/today/'+zodiacSign);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return DailyHoroscope.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

  static Future<WeeklyHoroscope> getWeeklyHoroscope(String zodiacSign) async {
    final response =
    await http.get('https://horoscope-api.herokuapp.com/horoscope/week/'+zodiacSign);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return WeeklyHoroscope.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

  static Future<MonthlyHoroscope> getMonthlyHoroscope(String zodiacSign) async {
    final response =
    await http.get('https://horoscope-api.herokuapp.com/horoscope/month/'+zodiacSign);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return MonthlyHoroscope.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

  static Future<YearlyHoroscope> getYearlyHoroscope(String zodiacSign) async {
    final response =
    await http.get('https://horoscope-api.herokuapp.com/horoscope/year/'+zodiacSign);

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return YearlyHoroscope.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }








}