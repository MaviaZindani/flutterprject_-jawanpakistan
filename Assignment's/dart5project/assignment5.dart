void main() {
  // Assignment number 5

  // Question number 1
  List<String> furitList = ['mango', 'apple', 'banana', 'watermelon', 'grapes'];
  furitList.sort();
  print(furitList);

  // Question number 2
  List<int> cont = [
    6,
    7,
    1,
    4,
    3,
    5,
    2,
    7,
    8,
    10,
    9,
    16,
    17,
    11,
    14,
    13,
    15,
    12,
    17,
    18,
    20,
    19
  ];
  cont.sort();
  var even = cont.reversed;

  print(even);

  // Question number 3
  List<int> cont8 = [];
  List<int> cont2 = [6, 7, 1, 4, 3, 6, 5, 2, 7, 8, 8, 10];
  List<int> repeatedNumbers = [];

  for (var i = 0; i < cont2.length; i++) {
    if (cont8.contains(cont2[i])) {
      repeatedNumbers.add(cont2[i]);
    } else {
      cont8.add(cont2[i]);
    }
  }
  print("So the repeated numbers are");
  for (var i = 0; i < repeatedNumbers.length; i++) {
    print(repeatedNumbers[i]);
  }

  // Question number 4
  List<int> cont3 = <int>[1, 2];
  if (cont3.isEmpty == true) {
    print('This list is M.T');
  } else {
    print('This list is not M.T');
  }

  // Question number 5
  List<int> cont4 = <int>[1, 2, 6, 8, 4];
  List<int> cont5 = <int>[1, 2, 9, 3, 5];
  var result2 = cont4.followedBy(cont5);

  print(result2);

  // Question number 6
  Map studentList1 = {
    'student1 name': "Mavia",
    'student1 marks': 320,
    'student1 age': 17,
    'student2 name': 'Yaseen',
    'student2 marks': 320,
    'student2 age': 18,
    'student3 name': 'Ali',
    'student3 marks': 320,
    'student3 age': 18,
  };

  print(studentList1);

  // Question number 7
  Map studentList = {
    1: {
      'student1 name': "Mavia",
      'student1 marks': 320,
      'student1 age': 17,
    },
    2: {
      'name': 'Yaseen',
      'marks': 600,
      'age': 18,
    },
    3: {
      'name': 'Ali',
      'marks': 580,
      'age': 18,
    }
  };

  print(studentList[2]);

  // Question number 8
  Map<String, int> populationList = {
    'Karachi': 3700,
    'Lahore': 7900,
    'Islamabad': 5000,
  };

  int highestNumber = 0;
  populationList.values.forEach((element) {
    if (element > highestNumber) {
      highestNumber = element;
    }
  });

  print("Highest Number");
  print(highestNumber);
}
