import 'dart:html';
import 'package:angular/angular.dart';

// Select myHighlight
@Directive(selector: '[myHighlight]')
class HighlightDirective {
  final Element _el;

  HighlightDirective(this._el);

  @Input()
  String defaultColor;

  // @Input which mean input information from tag by define element name.
  @Input('myHighlight')
  String highlightColor;

  @HostListener(
      'mouseenter') // Annotation define it will work when mouse arrow hover the tag.
  void onMouseEnter() => _highlight(highlightColor ?? defaultColor ?? 'red');

  @HostListener(
      'mouseleave') // Annotation define it will work when mouse arrow leave the tag.
  void onMouseLeave() => _highlight();

  void _highlight([String color]) {
    _el.style.backgroundColor = color;
  }
}
