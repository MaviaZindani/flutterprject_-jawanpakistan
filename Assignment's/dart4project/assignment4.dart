List<String> days = [];

 bool printDays() {
// question number 2
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thusday');
  days.add('Friday');
  days.add('Seturday');
  days.add('Sunday');

  print(days);
  for (var element in days) {
    print(element);
  }
  for (var i = 0; i < days.length; i++) {
    print(days[i]);
  }
  return true;
}

void main() {
  // question number 1
  List name = ['Mavia', 'Maaz', 'Yaseen', 'Irfan', 'Hasnian', 'Basit', 'Ali'];

  print(name);

  // question number 3
  List day = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thusday',
    'Friday',
    'Seturday',
    'Sunday'
  ];

  day.removeLast();
  print(day);

  // question number 4
  var number = [2, 6, 4];
  var highestnumber = number[0];
  var smallestnumber = number[0];

  for (var i = 0; i < number.length; i++) {
    if (number[i] > highestnumber) {
      highestnumber = number[i];
    }

    if (number[i] < smallestnumber) {
      smallestnumber = number[i];
    }
  }
  print('Smallest number is a: $smallestnumber');
  print('Highest number is a: $highestnumber');

// question number 5
  var integer = [34, 55, 62, 78, 95];
  var maximumvalue = integer[0];

  for (var i = 0; i < integer.length; i++) {
    if (integer[i] > maximumvalue) {
      maximumvalue = integer[i];
    }
  }

  print('Maximumvalue is a: $maximumvalue');

  // Run Function

  print(printDays());
}
