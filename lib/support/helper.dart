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

String getDateLabel(DateTime messageDate) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final messageDay = DateTime(messageDate.year, messageDate.month, messageDate.day);

  if (messageDay == today) {
    return "Today";
  } else if (messageDay == today.subtract(const Duration(days: 1))) {
    return "Yesterday";
  } else {
    return DateFormat('MMM dd').format(messageDate); // Example: Apr 26
  }
}

/// Formats a datetime string to 12-hour time (e.g., "10:30 AM").
/// If input is null or invalid, uses current time.
String formatTimeFromString(String? dateTimeStr) {
  try {
    final dateTime = DateTime.parse(dateTimeStr ?? DateTime.now().toIso8601String());
    return DateFormat.jm().format(dateTime);
  } catch (e) {
    return DateFormat.jm().format(DateTime.now());
  }
}
