// assignment number 3


void main() {
  // question number 1
  int number = 4;

  if (number > 0) {
    print('its a positive number');
  } else if (number <= -1) {
    print('its a nagetive number');
  } else {
    print('its 0');
  }

// question number 2
  String character = '6';

  if (character.toUpperCase() != character.toLowerCase()) {
    print('Its an alphabet');
  } else if (int.tryParse(character) != null) {
    print('Its a number');
  } else if (
      character == '!' ||
      character == '@' ||
      character == '#' ||
      character == '^' ||
      character == '%' ||
      character == '*' ||
      character == '(' ||
      character == ')' ||
      character == '_' ||
      character == '-' ||
      character == '=' ||
      character == '+' ||
      character == '[' ||
      character == ']' ||
      character == '}' ||
      character == '{' ||
      character == '|' ||
      character == '\\' ||
      character == '?' ||
      character == '/' ||
      character == '<' ||
      character == '>' ||
      character == ',' ||
      character == '.' ||
      character == '`' ||
      character == ';' ||
      character == '~' ||
      character == ':') {
    print('Its a special character');
  }

  // question number 3
  int x = 2024;
  var year = x;

if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print('It\'s a leap year');
}else{
    print('It\'s not a leap year');
}

  }

