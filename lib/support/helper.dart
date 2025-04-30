import 'package:intl/intl.dart';

/// Converts a DateTime string like "2025-04-24 01:39:21.000000"
/// into a 12-hour formatted time like "1:39 AM".
String formatTime(String datetimeStr) {
  final dateTime = DateTime.parse(datetimeStr);
  final formattedTime = DateFormat.jm().format(dateTime);
  return formattedTime;
}

/// inputput: regina bearden
/// Output: Regina Bearden
String capitalizeEachWord(String name) {
  return name.split(' ').map((word) => word.isNotEmpty ? word[0].toUpperCase() + word.substring(1).toLowerCase() : '').join(' ');
}
