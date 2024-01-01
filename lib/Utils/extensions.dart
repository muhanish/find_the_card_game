import 'package:flutter/material.dart';

extension SizedBoxExtension on num {
  SizedBox get hh => SizedBox(height: toDouble());
  SizedBox get ww => SizedBox(width: toDouble());
}
