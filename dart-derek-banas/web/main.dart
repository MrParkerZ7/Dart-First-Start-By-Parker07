import 'dart:html';
import 'dart:math';

void main() {
  querySelector("#button").onClick.listen(getSum);

//  sampleVariable();
  sampleMath();

  sampleConditional();
  sampleSwitch();
}

void getSum(MouseEvent event) {
  int num1 = int.parse((querySelector("#num1") as InputElement).value);
  int num2 = int.parse((querySelector("#num2") as InputElement).value);
  var sum = (num1 + num2).toString();
  querySelector("#sum").text = "$num1 + $num2 = $sum";
}

void sampleConditional() {
  // Relational ==, !=, >, <, >=, <=
  // Logical && || !

  String name = null;
  String age = "3";

  if (name == null) {
    print("Why you null?");
  }

  if (age == 3) {
    print("You are Number!!");
  } else {
    print("You not String!!");
  }
}

void sampleSwitch() {
  String superHero = "Superman";
  switch (superHero) {
    case "Batman":
      print("Bruce Wayne!!");
      break;
    case "Superman":
      print("Clark Kent!!");
      break;
    default:
      print("No one!!");
  }
}

void sampleMath() {
  var random = new Random();
  var number = 6.45;

  querySelector("#output").text = "5.0 + 4.0 = ${5.0 + 4.0}\n"
      "5.0 - 4.0 = ${5.0 - 4.0}\n"
      "5.0 * 4.0 = ${5.0 * 4.0}\n"
      "5.0 / 4.0 = ${5.0 / 4.0}\n"
      "5.0 % 4.0 = ${5.0 % 4.0}\n"
      "e^3 = ${exp(3)}\n"
      "log(1000) = ${log(1000)}\n"
      "max(10,5) = ${max(10, 5)}\n"
      "min(10,5) = ${min(10, 5)}\n"
      "10^5 = ${pow(10, 5)}\n"
      "sqrt(81) = ${sqrt(81)}\n"
      "round(6.45) = ${number.round()}\n\n"
      "::Random::\n"
      "int : ${random.nextInt(100)}\n"
      "dobule : ${random.nextDouble()}\n"
      "bool : ${random.nextBool()}\n";

  // Other math functions : acos, asin, atan, atan2 , cos, sin, tan
  // also : +=, -=, *=, /=
}

void sampleVariable() {
  // Constant Value
  const a = 4;
  const b = 5.6;
  const c = "Park";
  const d = true;

  // Mutable Value
  var e = 5;
  var f = 7.8;
  var g = "Fuck";
  var h = false;

  // Data Type
  String i = "Ohly Shit";
  bool j = false;
  int k = 74738;
  double l = 823.422;

  List<int> numbers = [1, 2, 3, 4, 5];
  Map<int, String> keyValue = {1: "Park", 2: "Fuck", 3: "Muck"};

  querySelector("#output").text = "Result int ${a + e + k}\n"
      "Result double ${b + f + l}\n"
      "Result String ${c + g + i}\n"
      "Result List $numbers\n"
      "Result Map $keyValue\n";
}
