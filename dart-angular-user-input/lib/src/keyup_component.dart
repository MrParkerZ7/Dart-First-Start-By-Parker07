import 'package:angular/angular.dart';
import 'dart:html';

// What key up it is. I'm not actually know.
// But I guess it might action immediately when the tag had change value.
@Component(
  selector: 'key-up1',
  // If use in html file | we don't have to put \ in front of $
  // Just define onKey(\$event)
  // The $event reference to this tag it's self.
  template: '''
    <p>Key-up1</p>
    <input (keyup)="onKey(\$event)">
    <p>{{values}}</p>
  ''',
)
class KeyUp1Component {
  String values = '';

  // It will action immediately.
  void onKey(KeyboardEvent event) {
    // .target is reference to the <input> element
    // and .value is reference to the current content of that element.
    InputElement el = event.target;

    values += '${el.value} | ';
  }
}

// We use #box Reference variable to get value
// #box it reference to it self similar to querySelector
@Component(
  selector: 'key-up2',
  template: '''
    <p>Key-up2</p>
    <input #box (keyup)="onKey(box.value)">
    <p>{{values}}</p>
  ''',
)
class KeyUp2Component {
  String values = '';

  void onKey(value) => values += '$value | ';
}

// This gonna work after we hit enter only
// It's not gonna work every time when we change value
@Component(
  selector: 'key-up3',
  template: '''
  <p>Key-up3 :: It gonna work only when we hit enter only</p>
  <input #box (keyup.enter)="values=box.value">
  <p>{{values}}</p>
  ''',
)
class KeyUp3Component {
  String values = '';
}

// blur It gonna work when we click any where on the page
@Component(
  selector: 'key-up4',
  template: '''
    <p>ey-up4 :: how we have keyup.enter and blur</p>
    <input #box
      (keyup.enter)="values=box.value"
      (blur)="values=box.value">
    <p>{{values}}</p>
  ''',
)
class KeyUp4Component {
  String values = '';
}
