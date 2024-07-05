void main() {
// question number 1
  List name = ['mavia', 'maaz', 'yaseen'];

  print(name);

// question number 2

  // List days = [];

  // days.add('monday');
  // days.add('tuesday');
  // days.add('wednesday');
  // days.add('thusday');
  // days.add('friday');
  // days.add('saturday');
  // days.add('sunday');

  // print(days);

// question number 3
  List days = [];

  days.remove('monday');
  days.remove('tuesday');
  days.remove('wednesday');
  days.remove('thusday');
  days.remove('friday');
  days.remove('saturday');
  days.remove('sunday');

  print(days);

// question number 4
  var number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var highestNum = 0;
  var smallestNum = 0;
  number.forEach((element) {
    if (element > highestNum) {
      highestNum = element;
    } else {
      if (element < smallestNum) {
        smallestNum = element;
      }
    }
    ;
  });

  print(highestNum);
  print(smallestNum);

// question number 5
  Map phone = {'samsang': 2, 'iphone': 1, 'redmi': 10, 'motorola': 5};

  print(phone.keys);

// question number 6
  Map world = {
    'pakistan': [
      'capitalCity is islamadad',
      'currency is pakistani rupees (PKR)',
      'languag is urdu'
    ],
    'india': [
      'capitalCity is new delhi',
      'currency is indian rupees (INR)',
      'languag is hindi'
    ],
    'sirlanka': [
      'capitalCity is colombo',
      'currency is sri lankan rupees (LKR)',
      'languag is Dravidian'
    ]
  };

  print(world['india']);

// question number 7
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  expenses.putIfAbsent('fri', () => 5000.0);

  print(expenses);

// question number 8
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  List<Map<String, dynamic>> removedUsers = [];

  usersEligibility.removeWhere((element) {
    bool notEligibal = element['eligible'] == false;
    if (notEligibal) {
      removedUsers.add(element);
    }
    return notEligibal;
  });

  print(removedUsers);

// question number 9
  List<int> cont = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var maximumNumber = 0;
  cont.forEach((element) {
    if (element > maximumNumber) {
      maximumNumber = element;
    }
  });

// question number 10
  List<String> words = [
    'stick',
    'mavia',
    'wall',
    'water',
    'mavia',
    'maaz',
    'stick'
  ];
  List<String> word = [];
  List<String> duplicateWord = [];
  words.sort();
  for (var i = 0; i < words.length; i++) {
    if (word.contains(words[i])) {
      duplicateWord.add(words[i]);
    } else {
      word.add(words[i]);
    }
  }
  print(duplicateWord);
  print(word);

// question number 11
  // var atomicnumber = ();
  // var water = ();
  // var hotweel = ();
  // var bike = ();
  // var chainsow = ();

  // List oldList = [
  //   1,
  //   5,
  //   water,
  //   6,
  //   hotweel,
  //   8,
  //   bike,
  //   44,
  //   7,
  //   atomicnumber,
  //   9,
  //   3,
  //   chainsow,
  // ];
  // List newList = oldList;
  // newList.first(oldList);
  // print(newList);

// question number 12
  List oldList1 = [
    'samsang',
    'iphone',
    'redmi',
    'motorola',
    'mavia',
    'maaz',
    'yaseen'
  ];
  List newList2 = oldList1;

  print(newList2.reversed);

// question number 13
  List intList = [1, 3, 4, 7, 3, 8, 09, 2, 35, 654, 4, 53, 32, 463];
  List ConstList = [intList];

  print(ConstList.reversed);

// question number 14
  List intList1 = [1, 3, 4, 7, 3, 8, 09, 2, 35, 654, 4, 53, 32, 463];
  List ascending =[intList1 ];

// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
// question number 1
}
