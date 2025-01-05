//Programming with dart basics

int num2 = 50;
void main() {
  final clock = DateTime.now();
  print(clock);

  String namy = "ASHWAGANDHA";
  print(namy.length);

  ///
  List<int> numbers = [1, 2, 3, 4, 5, 66, 7];
  int maxNum = numbers[0];
  for (int num in numbers) {
    if (num > maxNum) {
      maxNum = num;
    }
  }
  print(maxNum);

  List<int> number = [1, 2, 3, 5, 4, 7, 8];
  int bigNum = number[0];
  for (int no in number) {
    if (no > bigNum) {
      bigNum = no;
    }
  }
  print(bigNum);

  String? somevalue = null;
  //prints 0 if the variable is null
  if (somevalue == null) {
    print(0);
  } else {
    print("not null");
  }
  // print 0 if the variable is null
  print(somevalue ?? 0);

  dynamic age = 50;
  if (age >= 18 && age <= 50) {
    print("isAdult");
  } else if (age >= 51 && age <= 90) {
    print("isOld");
  } else {
    print("isYoung");
  }
  /*loop with bool. this will run twice because it check at runtime and compile time
  because of dynamic. but will run once if the datatype declare cant be anything*/
  if (age is int) {
    print(true);
  } else {
    print(false);
  }
  // using bool
  String thisValue = "Hello World";
  bool value = thisValue.startsWith("H") ? true : false;
  print(value);
  //using ternary
  String value2 = thisValue.startsWith("H") ? "WOW" : "NaH";
  print(value2);

  String desZone = "XYZ";
  int shipCost = 5;
  double weightInKgs = 53.5;
  double costCalc = shipCost * weightInKgs;
  if (desZone == "XYZ") {
    shipCost = 5;
    print("Shipping cost: \$${costCalc}");
    if (desZone == "ABC") {
      shipCost = 7;
      print("Shipping cost: \$${costCalc}");
    }
    if (desZone == "PQR") {
      shipCost = 10;
      print("Shipping cost: \$${costCalc}");
    }
  } else {
    print("error");
  }
  //switch case
  switch (desZone) {
    case "XYZ":
      print("Shipping cost: ${costCalc}");
      break;
    case "ABC":
      print("Shipping cost: ${costCalc}");
      break;
    case "PQR":
      print("Shipping cost: ${costCalc}");
      break;
    default:
  }
  //loops
  //for
  for (int i = 0; i < 7; i = i + 3) {
    print("hello world ${i + 1}");
  }
  print(desZone.substring(0, 2));
//while
  int i = 0;
  while (i < 7) {
    print("hello world ${i + 1}");
    i++;
  }
  print(i);
  //Do while it runs until the value is false
  do {
    print("hello world ${i + 1}");
    i++;
  } while (i < 7);
  print(i);
  //functions
  int no1 = 100;
  //calling the function for addition
  print(addNumber(no1, num2));

//calling function with multiple datatypes
  var (aged, name, isAdult, greeting) = showDetails();
  print(name);
  print(showDetails().$3);
//reassigning a function to a variable
  final stuff = printStuff();
  stuff();
//calling arrow function
  printy();
//calling the classes
  Dog dog = Dog();
  Cat cat = Cat();
  Lion lion = Lion();
  Animal family = Dog();

  print("Animal name: ${dog.name} \n Animal type: ${dog.type}");
  dog.makeSound();

  print(
      "Animal name: ${cat.name} \n Animal type: ${cat.type} \n Animal family: ${cat.family}");
  cat.makeSound();

  print(
      "Animal name: ${lion.name} \n Animal type: ${lion.type} \n Animal family: ${lion.family}");
  lion.makeSound();

  print(
      "Animal family: ${family.family} \n Animal name: ${(family as Dog).name}");

  print(WorldRecord().jump_height);
  print(NewWorldRecord().value());

  //list

  List<Student> students = [
    Student("Dano", 80),
    Student("Sandra", 60),
    Student("Agazie", 69),
    Student("Duke", 80),
    Student("Ceasar", 90),
  ];

  print(students[2].name);
  //redeclaring a list item
  students[2] = Student("Gabriel", 70);
  print(students);

  List<Student> filterStudents =[];

  /*looping to get element of a List who satisfy a condition
  - A new list of empty students
  - run a for loop 
  - check if the grade of 1 student is greater than value
  - if true, add student to my new list
  - print list out of for loop */
  for(int i = 0; i < students.length; i++){
    if(students[i].marks < 81){
    filterStudents.add(students[i]);
    }
  }
  //using in keyword with for loop
  for(Student student in students){
    if(student.marks<81){
       filterStudents.add(student);
    }
  }

 
  students.add(Student("James", 50));
  students.insert(0, Student("Ronaldo", 70));
  print(students);
  print(students[5].name);
  print(List.of(students));
   print(filterStudents);
}

//function with multiple datatypes
(int, String, bool, String) showDetails() {
  return (17, "Anyahuru Daniel", false, "Hi");
}

//function for addition
int addNumber(int num1, int num2) {
  int add = num1 + num2;
  return add;
}

//Funtion returning a function
Function printStuff() {
  return () {
    print('hELLO');
  };
}

//Arrow function * when 1 statement is to be returned or executed
void printy() => print("Daniel");

//Classes
class Animal<T> {
  final String type;
  final String sound;
  final String name;
  final String family = "??";
//Animal constructor
  Animal({required this.type, required this.sound, required this.name});

  void makeSound() {
    print(sound);
  }
}

// class Dog extends Animal {
//   Dog() : super(type: "Domestic", sound: "Barks", name: "Dog");
// }
class Dog implements Animal {
  final String type = "Domestic";
  final String sound = "Barks";
  final String name = "German Shepard";

  @override
  final String family = "Amphibian";

  @override
  void makeSound() {
    print(sound);
  }
}

class Cat extends Animal {
  @override
  String get family => "Masxk";
  Cat() : super(type: "Domestic", sound: "Meows", name: "Cat");
}

class Lion extends Animal {
  Lion() : super(type: "Wild", sound: "Roars", name: "Lion");
}

//mixin
mixin Jump {
  int jump_height = 10;
}

final class WorldRecord with Jump {
  void height() {
    print(jump_height);
  }
}

final class NewWorldRecord extends WorldRecord {
  int get jump_height => super.jump_height;
  int value() {
    int valued = jump_height * 4;
    return valued;
  }
}

// types of modifiers
sealed class See1 {}

final class See2 {}

base class See3 {}

interface class See4 {}

mixin class See5 {}

class Student {
  final String name;
  final int marks;
  Student(this.name, this.marks);

  @override
  String toString() => "Student: $name";
}
//Verification
