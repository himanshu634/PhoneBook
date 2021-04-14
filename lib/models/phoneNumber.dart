import 'package:flutter/cupertino.dart';

class PhoneNumber {
  final String name;
  final String number;

  PhoneNumber({
    @required this.name,
    @required this.number,
  });

  String getName() {
    return this.name;
  }

  String getNumber() {
    return this.number;
  }
}
