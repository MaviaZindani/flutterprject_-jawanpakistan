class BoxMoldes{
  final String _boxpic;
  final String _hours;
  final String _title1;
  final String _title2;
  final String _subtitle1;
  final String _subtitle2;

  BoxMoldes(
    this._boxpic, 
    this._hours, 
    this._title1,
    this._title2, 
    this._subtitle1, 
    this._subtitle2, 
    );

  String get boxpix => _boxpic;
  String get hours => _hours;
  String get subtitle1 => _subtitle1;
  String get subtitle2 => _subtitle2;
  String get title1 => _title1;
  String get title2 => _title2;

}