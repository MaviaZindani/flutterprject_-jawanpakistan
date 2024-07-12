import 'package:flutter/material.dart';

class DoneNotdoneModel {
  final String _done;
  final Color _color;

  DoneNotdoneModel(this._color,this._done);

  String get done => _done;
  Color get color => _color;
}