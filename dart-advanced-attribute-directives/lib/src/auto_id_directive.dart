import 'dart:html';
import 'package:angular/angular.dart';

int _idCounter = 0;

@Directive(selector: '[autoId]')
void autoIdDirective(
  Element el,
  @Attribute('autoId') String prefix,
) {
  el.id = '$prefix${_idCounter++}';
}
