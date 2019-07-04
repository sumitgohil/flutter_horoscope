class DailyHoroscope {
  String date;
  String horoscope;
  String sunsign;

  DailyHoroscope({this.date, this.horoscope, this.sunsign});

  DailyHoroscope.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    horoscope = json['horoscope'];
    sunsign = json['sunsign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['horoscope'] = this.horoscope;
    data['sunsign'] = this.sunsign;
    return data;
  }
}


class WeeklyHoroscope {
  String week;
  String horoscope;
  String sunsign;

  WeeklyHoroscope({this.week, this.horoscope, this.sunsign});

  WeeklyHoroscope.fromJson(Map<String, dynamic> json) {
    week = json['week'];
    horoscope = json['horoscope'];
    sunsign = json['sunsign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['week'] = this.week;
    data['horoscope'] = this.horoscope;
    data['sunsign'] = this.sunsign;
    return data;
  }
}


class MonthlyHoroscope {
  String month;
  String horoscope;
  String sunsign;

  MonthlyHoroscope({this.month, this.horoscope, this.sunsign});

  MonthlyHoroscope.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    horoscope = json['horoscope'];
    sunsign = json['sunsign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['month'] = this.month;
    data['horoscope'] = this.horoscope;
    data['sunsign'] = this.sunsign;
    return data;
  }
}


class YearlyHoroscope {
  String year;
  String horoscope;
  String sunsign;

  YearlyHoroscope({this.year, this.horoscope, this.sunsign});

  YearlyHoroscope.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    horoscope = json['horoscope'];
    sunsign = json['sunsign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['horoscope'] = this.horoscope;
    data['sunsign'] = this.sunsign;
    return data;
  }
}


