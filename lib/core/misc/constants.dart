String baseUrlApi = 'http://192.168.1.5:3005/';

class Constant {
  static const animationDuration = Duration(milliseconds: 200);
  static const defaultDuration = Duration(milliseconds: 250);
  static const defaultPadding = 20.0;

  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
}
