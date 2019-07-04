import 'package:flutter/material.dart';
import 'package:horoscope/horoscope_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String sunsign= "Sunsign", time ="Time of Horoscope", horoscope= "Click on Button Above to get Horoscope";

  String selectedZodiac = ZodiacSigns.CAPRICORN;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Horoscope"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _normalDown(),
            Wrap(
              spacing: 3.0,
              children: <Widget>[
                RaisedButton(

                  color: Colors.brown,
                  textColor: Colors.white,
                  child: Text("Get Daily Horoscope"),
                  onPressed: () {
                    Horoscope.getDailyHoroscope(selectedZodiac)
                        .then((val) {
                      if (val != null) {
                       setState(() {
                         time = val.date;
                         horoscope = val.horoscope;
                         sunsign = val.sunsign;
                       });
                      }
                    });
                  },
                ),RaisedButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text("Get Weekly Horoscope"),
                  onPressed: () {
                    Horoscope.getWeeklyHoroscope(selectedZodiac)
                        .then((val) {
                      if (val != null) {
                        setState(() {
                          time = val.week;
                          horoscope = val.horoscope;
                          sunsign = val.sunsign;
                        });
                      }
                    });
                  },
                ),RaisedButton(
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text("Get Monthly Horoscope"),
                  onPressed: () {
                    Horoscope.getMonthlyHoroscope(selectedZodiac)
                        .then((val) {
                      if (val != null) {
                        setState(() {
                          time = val.month;
                          horoscope = val.horoscope;
                          sunsign = val.sunsign;
                        });
                      }
                    });
                  },
                ),RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Get Yearly Horoscope"),
                  onPressed: () {
                    Horoscope.getYearlyHoroscope(selectedZodiac)
                        .then((val) {
                      if (val != null) {
                        setState(() {
                          time = val.year.toString();
                          horoscope = val.horoscope;
                          sunsign = val.sunsign;
                        });
                      }
                    });
                  },
                ),
              ],
            ),
            Text("Time : "+time),
            Text("SunSign : "+sunsign),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    horoscope
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DropdownButton _normalDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: ZodiacSigns.AQUARIUS,
        child: Text(
          ZodiacSigns.AQUARIUS,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.SAGITTARIUS,
        child: Text(
          ZodiacSigns.SAGITTARIUS,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.SCORPIO,
        child: Text(
          ZodiacSigns.SCORPIO,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.LIBRA,
        child: Text(
          ZodiacSigns.LIBRA,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.CAPRICORN,
        child: Text(
          ZodiacSigns.CAPRICORN,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.CANCER,
        child: Text(
          ZodiacSigns.CANCER,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.LEO,
        child: Text(
          ZodiacSigns.LEO,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.ARIES,
        child: Text(
          ZodiacSigns.ARIES,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.GEMINI,
        child: Text(
          ZodiacSigns.GEMINI,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.PISCES,
        child: Text(
          ZodiacSigns.PISCES,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.TAURUS,
        child: Text(
          ZodiacSigns.TAURUS,
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.VIRGO,
        child: Text(
          ZodiacSigns.VIRGO,
        ),
      ),

    ],
    onChanged: (value) {
      setState(() {
        selectedZodiac = value;
      });
    },

    value: selectedZodiac,
  );
}
