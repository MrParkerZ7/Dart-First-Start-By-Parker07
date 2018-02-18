import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';


@Component(
  selector: 'click-me',
  template: '''
  <p>Click-me</p>
  <button (click)="onClickMe()">Click me!</button>
  <p>{{clickMessage}}</p>
  ''',
)
class ClickMeComponent {
  String clickMessage = '';

  void onClickMe() => clickMessage = 'You are fucked click on me!!';
}
