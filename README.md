# Horoscope

Hi! With the help of this plugin you can easily get **Daily, Weekly, Monthly and Yearly** Horoscope.

To Install add  " horoscope: ^1.0.1 " Dependency.
Run flutter pub get
Now in your Dart code add this line 'import 'package:horoscope/horoscope/Horopscope.dart';'

 ***Check out Example for more details***

## Get Daily Horoscope

> Horoscope.getWeeklyHoroscope(ZodiacSigns.TAURUS)  
  .then((val) {  
  if (val != null) {  
  setState(() {  
  time = val.week;  
  horoscope = val.horoscope;  
  sunsign = val.sunsign;  
  });


## Get Weekly Horoscope

>Horoscope.getWeeklyHoroscope(ZodiacSigns.TAURUS)  
  .then((val) {  
  if (val != null) {  
  setState(() {  
  time = val.week;  
  horoscope = val.horoscope;  
  sunsign = val.sunsign;  
  });  
  }
## Get Monthly Horoscope

>Horoscope.getWeeklyHoroscope(ZodiacSigns.TAURUS)  
  .then((val) {  
if (val != null) {  
  setState(() {  
  time = val.month;  
  horoscope = val.horoscope;  
  sunsign = val.sunsign;  
  });  
}

## Get Yearly Horoscope

>Horoscope.getWeeklyHoroscope(ZodiacSigns.TAURUS)  
  .then((val) {  
if (val != null) {  
  setState(() {  
  time = val.year.toString();  
  horoscope = val.horoscope;  
  sunsign = val.sunsign;  
  });  
}

NOTE : This plugin uses http package. So you dont need to include one. 

This is a wrapper for https://github.com/tapaswenipathak/Horoscope-API .
