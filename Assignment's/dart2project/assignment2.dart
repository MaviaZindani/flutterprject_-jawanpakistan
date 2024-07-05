void main() {
// assignment2

// question number 1
  var lenght = 5;
  var breadth = 5;

  if (lenght == breadth) {
    print("its is square");
  } else {
    print("its is rectangle");
  }

  // qiestion number 2
  var kamran = 2;
  var imran = 5;

  if (kamran == imran) {
    print("both are equal");
  } else if (kamran >= imran) {
    print("kamrn is yunger");
  } else {
    print("imran is yunger");
  }

// qiestion number 3
  var int1 = 16;
  var int2 = 10;
  var int3 = int1 - int2;

  print(
      "$int3 - These student willl not sit in class room on examination date");

// qiestion number 4
  var year = 2100;

  if ((year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)) {
    print("its leap year");
  } else {
    print("its not a leap year");
  }

  // qiestion number 5
  var temp = 42;

  if (temp == 0) {
    print("Freezing weather");
  } else if (temp >= 0 && temp <= 10) {
    print("Very cold weather");
  } else if (temp >= 10 && temp <= 20) {
    print("Cold weather");
  } else if (temp >= 20 && temp <= 30) {
    print(" Normal in Temprature");
  } else if (temp >= 30 && temp <= 40) {
    print("Its too Hot");
  } else {
    print("It's Extremely hot today");
  }

  // qiestion number 6
  var ab = ("mavia");
  int count = 0;
  for (var i = 0; i < ab.length; i++) {
    if (ab[i] == "a" ||
        ab[i] == "e" ||
        ab[i] == "i" ||
        ab[i] == "o" ||
        ab[i] == "u") {
      print("it is vowel word");
      count++;
    } else {
      print("its is not a vowal word");
    }
  }
  print("total vowels in this string are $count");

  // qiestion number 7
  var name = "mavia";
  var unit = 750;
  num charge = 2.00;
  num totalBill = charge * unit;

  print(" ");
  print(" ");
  print(name);
  print("Total unit's $unit");
  print("Per unit charge $charge");
  print("Total amount - $totalBill");
  print("Customer IDNO :1001");
}