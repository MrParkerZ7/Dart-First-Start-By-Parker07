import 'package:angular/angular.dart';

// #box it is a reference variable which we can call from out side of the tag it self.

@Component(
  selector: 'loop-back',
  template: '''
  <p>Loop-back</p>
  <input #box (keyup)="0">
  <p>{{box.value}}</p>
  ''',
)
class LoopBackComponent {}
