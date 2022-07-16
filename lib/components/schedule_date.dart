import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:kirana_network_mobile/core/utils.dart';

class ScheduleDate extends StatelessWidget {
  final ScheduleDateModel date;
  final TextStyle style;
  ScheduleDate({required this.date, this.style = const TextStyle()});
  @override
  Widget build(BuildContext context) {
    if (date == null) {
      return Text("UNSCHEDULED");
    }
    final _dateFormatter =
        DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY); // .yMMMMd('en_US')
    final dateString = _dateFormatter.format(
        ScheduleDateModelWithEquality.fromScheduleDateModel(date).toDateTime());

    return Text(dateString, style: style);
  }
}
