import 'package:charts_flutter/flutter.dart' as charts;


class BusinessAnalytical{
  String item;
  int salesCount;
  BusinessAnalytical(this.item, this.salesCount/*,  this.barColor*/);
}

class WeeklyAnalytical{
  String date;
  int amount;
  WeeklyAnalytical(this.date, this.amount/*,  this.barColor*/);
}
