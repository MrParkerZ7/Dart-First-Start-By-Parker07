import 'dart:convert';
import 'dart:html';
import 'main.dart';

// dart also support top level man function which can use as DartVM server side
void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  logPrint("Park007");
  print(showName("Park"));
  changeDataType();
  multipleLine();
  optionalParameter("Park", 24);
  optionalParameter("Park", 24, "Ubon City");
  optionalParameter("Park", 24, "Ubon City", 62.4);
  optionalParameter2("Park");
  callFunAsFirstClassObject();
  assignFunToVariable();
  anonymousFunction();
  anonymousFunWithLambdaExpression();
  typeTestOperators();
  assignmentOperators();
  conditionalExpressions();
  cascadeNotation();
  cascadeNotation2();
  cascadeNotation3();
  cascadeNotation4();
  forLoop();
  whileLoop();
  breakAndContinue();
  switchCase();
  //throwingOrRaisingException(); // Code in comment. have to uncomment before try it
  tryCatchException();
  tryCatchRethrow();
  jsonData();
  classes();
  constructor();
  redirectingConstructor();
  getterSetter();
  abstractClass();
  overridableOperators();
  implicitInterfaces();
  extendingClass();
  enumClass();
  multipleInheritance();
}

multipleInheritance(){
  // TODO: Continue..
}


enumClass() {
  // Get all value from enum
  List<RareSuperBike> bb = RareSuperBike.values;
  for (var i in bb) {
    print("EnumClass : RareBike : ${i.index} : ${i}");
  }
}

enum RareSuperBike { HP4, HP4Race, H2R, R1M, HRC }

extendingClass() {
  var tele = new Television();
  tele.turnOn("Tele");

  var smartTele = new SmartTelevision();
  smartTele.turnOn("SmartTele");
}

class Television {
  void turnOn(String message) {
    print("ExtendingClass : Television : $message");
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn(String message) {
    super.turnOn(message);
    print("ExtendingClass : SmartTelevision : $message");
  }
}

implicitInterfaces() {
  print(greetBob(new People('Kathy')));
  print(greetBob(new Impostor()));
}

class People {
  final _name;

  People(this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}

class Impostor implements People {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(People person) => person.greet('Bob');

overridableOperators() {
  Vector v = new Vector(500, -200);
  Vector w = new Vector(150, -800);
  Vector a = v + w;
  print("OverridableOperators : money = ${a.money} : Debt = ${a.debt}");
}

class Vector {
  int money, debt;

  Vector(this.money, this.debt);

  Vector operator +(Vector v) {
    return new Vector(money + v.money, debt + v.debt);
  }

  Vector operator -(Vector v) {
    return new Vector(money - v.money, debt - v.debt);
  }

  int currentMoney() {
    return money + debt;
  }
}

abstractClass() {
  Reality truth = new Reality();
  truth.car();
  truth.home();
  truth.couple();
}

abstract class Imagination {
  void car();

  void home();

  void couple();
}

class Reality extends Imagination {
  @override
  void car() {
    print("Dream car : bicycle");
  }

  @override
  void couple() {
    print("Dream couple : single");
  }

  @override
  void home() {
    print("Dream home : hire home");
  }
}

getterSetter() {
  // First demo
  Microwave micro = new Microwave('dog', 'banana');
  print("GetterSetter : Microwave : Food : ${micro.getFood}");
  print("GetterSetter : Microwave : Fruit : ${micro.getFruit}");

  // Second demo
  var rect = new Rectangle(3, 4, 20, 15);
  print("GetterSetter : right : ${rect.right}");

  rect.right = 12;
  print("GetterSetter : right : ${rect.bottom}");
}

class Microwave {
  String food, fruit;

  Microwave(this.food, this.fruit);

  String get getFood => "Hot $food";

  String get getFruit => "Rotten $fruit";
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  num get right => left + width;

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}

redirectingConstructor() {
  // Redirect Constructor
  Stuff s = new Stuff(5, 6);
  Stuff h = new Stuff.alongXAxis(9.55);

  // Constant Constructor
  ConstantConstructor a = new ConstantConstructor(5, 5);

  // FactoryConstructor
  FactoryConstructor z = new FactoryConstructor("Park");
  FactoryConstructor c = new FactoryConstructor._internal('Fuck');
}

// RedirectionConstructor
class Stuff {
  num x, y, z;

  Stuff(this.x, this.y) {
    this.x = x;
    this.y = y;
  }

  // redirectingConstructor can not have any body
  Stuff.alongXAxis(num x)
      : this(x, 0); // but can initial value and name your second constructor
}

class FactoryConstructor {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, FactoryConstructor> _cache =
      <String, FactoryConstructor>{};

  factory FactoryConstructor(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new FactoryConstructor._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  FactoryConstructor._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

// Constant Constructor class
class ConstantConstructor {
  static final ConstantConstructor origin = const ConstantConstructor(0, 0);

  final num x, y;

  const ConstantConstructor(this.x, this.y);
}

constructor() {
  var team = new Hero("Daddy", "Mommy", "Me!!");
  print("Constructor : HeroTeam : ${team.stronger} ${team.faster} ${team
      .smarter}");
  var justiceLeague = new SuperHero(
      "Superman", "Flash", "Batman", "Hulk", "Iron-man", "CaptonAmerica");
  print("Constructor : JusticeLeague : ${justiceLeague.stronger} ${justiceLeague
      .faster} ${justiceLeague.smarter} ${justiceLeague.anger} ${justiceLeague
      .richer} ${justiceLeague.older}");
}

class Hero {
  // declare in value same type in one line like java.
  String stronger, faster, smarter;

  // don't have to define default constructor because it's had by default.
  // define constructor like java.
  Hero(String stronger, String faster, String smarter) {
    this.stronger = stronger;
    this.faster = faster;
    this.smarter = smarter;
  }
}

class SuperHero extends Hero {
  String anger, richer, older;

  SuperHero(String stronger, String faster, String smarter, String anger,
      String richer, String older)
      : super(stronger, faster, smarter) {
    this.anger = anger;
    this.richer = richer;
    this.older = older;
  }
}

classes() {
  var p = new Point(2, 2); // We also have
  print("Classes : instant : p = $p");

  num distance = p.distanceTo(new Point(4, 4));
  print("Classes : after disinstance : distance = $distance");
  print("Classes : after disinstance : p= $p");

  var z = new Time();
  print("Classes : Time = ${z.hh}:${z.mm}:${z.ss}");
  z.hh ??= 1;
  z.mm ??= 24;
  z.ss ??= 04;
  print("Classes : Time = ${z.hh}:${z.mm}:${z.ss}");
}

class Time {
  int hh = 3;
  int mm;
  int ss;
}

jsonData() {
  var jsonData = JSON.decode('{"x":1, "y":2}');
  print("JsonData : $jsonData");
}

tryCatchRethrow() {
  try {
    throwingOrRaisingException();
  } catch (e) {
    // catch exception from try block which that method must know define rethrow; to release exception
    print("TryCatchRethrow : show exception from method ${e.runtimeType}");
  } finally {
    print("TryCatchRethrow : Everything finally done!!");
  }
}

tryCatchException() {
  try {
    throwingOrRaisingException();
  } on NullThrownError catch (e) {
    print("TyrCatchException : Handle null exception here!!\n"
        "Message : $e");
  } on FormatException catch (e) {
    print("TyrCatchException : Handle format exception here!!\n"
        "Message : $e");
  } on Exception catch (e) {
    print("TyrCatchException : Handle all exception here!!\n"
        "Message : $e");
    rethrow; // this line is allow callers to see exception
  } finally {
    print("TyrCatchException : Everything finally finished!!");
  }
}

throwingOrRaisingException() {
  var x = null;
  if (x == null) {
    throw new NullThrownError(); // exception will occur at console log
  } else if (x is! int)
    throw new FormatException('$x was not Int');
  else // raising will occur at console log
    throw 'Some Exception!!'; // this throw can not catch by any exception and can not handle at all case.
}

switchCase() {
  String name = "Macro";
  switch (name) {
    case "Park":
      print("SwitchCase : $name is Employee");
      break; // if remove break it will continue. even found math result already.
    case "Macro":
      print("SwitchCase : $name is Boss");
      break;
    default:
      print("SwitchCase : $name is Anonymous");
      break; // actually don't have to write this line
  }
}

breakAndContinue() {
  int i = 0;
  while (true) {
    print("BreakAndContinueWithLoop : $i");
    if (i++ < 4)
      continue; // if condition true it will continue loop from here immediately.
    break; // if if condition false it will run to break command and exit the loop.
  }
}

whileLoop() {
  int i = 0;
  while (i < 3) {
    print("WhileLoop : $i");
    i++;
  }

  int x = 0;
  do {
    print("DoWhileLoop : $x");
    x++;
  } while (x < 3);
}

forLoop() {
  // common for loop
  for (int i = 0; i < 5; i++)
    print("DartForLoop : $i"); // for loop with single command no need =

  // sample for datr get started web
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print("CommanForLoop : $i"));
  }
  callbacks.forEach((c) => c());

  //Iterable For loop
  List name = ["Park", "Mark", "Suck"];
  for (String s in name) {
    print("IterableLoop : $s");
  }
}

cascadeNotation4() {
  final myBike = (new MotorBike()
    ..brand = "BMW"
    ..model = "S1000RR"
    ..wight = 195.0
    ..motor = (new Motor()
      ..cc = 1000
      ..hp = 204));
  print(
      "CascadeNotation : nested build : ${myBike.brand} ${myBike.model} ${myBike
          .wight} ${myBike.motor.cc} ${myBike.motor.hp}");
}

class MotorBike {
  String brand;
  String model;
  double wight;
  Motor motor;
}

class Motor {
  int cc;
  int hp;
}

// By separate command out
cascadeNotation3() {
  var button = querySelector('#output4');
  button.text = 'Equivalent by separate line you can try to click me again.';
  button.classes.add('importent');
  button.onClick.listen((e) => button.text = 'YOU CLICKED ME AGAIN!!');
}

cascadeNotation2() {
  querySelector('#output3')
    ..text = "You can try to click me."
    ..onClick
        .listen((e) => querySelector('#output3').text = "YOU CLICKED ME!!");
}

// .. let us create multiple command event but have to sort by sequence
cascadeNotation() {
  querySelector('#output2') // select tag html by id
    ..text = 'Confirm.' // set text this tag
    ..classes.add('important') // something...
    ..onClick.listen((e) => window.alert('confirm!!')); // set event onClick
}

conditionalExpressions() {
  var value = "Park";

  // Condition like if-else but tiny then
  (value is String)
      ? print("ConditionalExpression : $value is String")
      : print("ConditionalExpression : $value is not String");

  String name = null;
  print("ConditionEzxpression : name is ${name ??
      'Park'}"); // ?? is assign for that case only but local name still null
  print(
      "ConditionEzxpression : name is $name"); // if you need local value is change you have to use ??= represent ??
}

assignmentOperators() {
  String name = 'Park'; // common assignment
  int age = null;
  name ??= 'Suck'; // ??= assign when it = null
  age ??= 23;

  print("AssignmentOperators : $name $age");
}

typeTestOperators() {
  var person = new Person();

  if (person.age is int)
    print("TypeTestOperators : person.age = int : ${person.age}");
  else
    print("TypeTestOperators : person.age != int");

  // shrink it down but error. I don't know why ?
//  (person.name as Person).name = 'DarkSide';
  print("TypeTestOperators : $person");
}

class Person {
  String name = "Park";
  int age = 23;
  double wight = 62.4;
}

anonymousFunWithLambdaExpression() {
  List name = ["Park", "Fuck", "Muck"];
  name.forEach((item) => print("AnonymousFunWihtLambdaExpression : $item"));
}

//Anonymous Function
anonymousFunction() {
  //  if had default value it's should have a bracket
  ({String name = "Mr. Park"}) {
    print("AnoymousFunction : $name");
  };
}

// It does't work. Don't know why?
assignFunToVariable() {
  var load = (stuff) => '!!! ${stuff.toUpperCase()} !!!';
  load('Note Book!!');
  print("AssignFunToVariable : $load");
}

callFunAsFirstClassObject({var list = const [1, 2, 3]}) {
  list.forEach(funAsFirstClassObject);
}

funAsFirstClassObject(int element) {
  print("FunctionAsFirstClassObject: $element");
}

// Optional parameter with default parameter like kotlin
void optionalParameter(String name, int age,
    [String address = "", double wight = 0.0]) {
  print("SampleOptionalParameter: $name $age $address $wight");
}

// Default parameter values which require just 1 parameter. but for other argument it's had default already.
// if we put value in it will be throw error.
void optionalParameter2(String nickName,
    {String firstName = "Promsawat", String lastName = "Pitakmetakul"}) {
  print("SampleOptionalParameter2: $nickName $firstName $lastName");
}

void multipleLine() {
  var s = '''
  You can create multiple line
  by use triple quotation marks
  ''';

  print(s);
}

void changeDataType() {
  String no = "873";
  int number = int.parse(no);
  print("SampleChangeDataType : $number");
}

// method void no return type
void logPrint(name) {
  // parameter non definition type. it can be any type
  print("LogPrint : $name");
}

// method with return type
String showName(String name) {
  // fix type
  return "ShowName : Hello $name";
}

void sampleConstFinal() {
  var vList = const [];
  final fList = const [];
  const cList = const [];

  vList = [1, 2, 3];
  vList = [2, 3, 4, 5];
  vList = ["Park", "Fuck"];
  // vList = "Park"; // Error because type must be array only

  // fList = [1, 2, 3]; // Error, because final must be initial sin declare
  // cList = [1,2,3]; // Error, like the same with fList
}
