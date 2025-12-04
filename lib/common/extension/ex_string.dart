import 'package:intl/intl.dart';

/// 扩展 String
extension ExString on String {
  /// 格式化日期 - yyyy-MM-dd
  String get dateFormatOfyyyyMMdd {
    var date = DateTime.parse(this);
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
