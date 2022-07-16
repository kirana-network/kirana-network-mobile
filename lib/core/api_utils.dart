import 'dart:convert';

class FilterObject {
  List<String> ids;
  FilterObject({required this.ids});
  @override
  String toString() {
    return jsonEncode(
      {
        "ids": ids,
      },
    );
  }
}
