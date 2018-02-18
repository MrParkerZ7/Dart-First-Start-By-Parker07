import 'package:angular/angular.dart';
import 'dart:html';
import 'dart:math';

void main() {
  ButtonInputElement submit = querySelector('#submit'); // declare value type.
  NumberInputElement age = querySelector('#age');
  TextInputElement name = querySelector('#name');

  // Use onClick listen to clean name to empty value.
  name.onClick.listen((MouseEvent e) => name.value = '');

  age.onChange.listen((Event e) {
    window.alert("your age = ${age.value}");
  });

  // Use onClick listen to express event window alert.
  submit.onClick.listen((MouseEvent e) {
    window.alert("Hi, ${name.value}. you are ${age.value} year old");
  });
}
