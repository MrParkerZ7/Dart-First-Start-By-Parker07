import 'dart:html';
import 'main.dart';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  logPrint("Park007");
  print(showName("Park"));
  sampleChangeDataType();
  sampleMultipleLine();
  sampleOptionalParameter("Park", 24);
  sampleOptionalParameter("Park", 24, "Ubon City");
  sampleOptionalParameter("Park", 24, "Ubon City", 62.4);
}

// Optional parameter with default parameter like kotlin
void sampleOptionalParameter(String name, int age,
    [String address = "", double wight = 0.0]) {
  print("SampleOptionalParameter: $name $age $address $wight");
}

void sampleMultipleLine() {
  var s = '''
  You can create multiple line
  by use triple quotation marks
  ''';

  print(s);
}

void sampleChangeDataType() {
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
