import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:dart_angular_user_input/src/click_me_component.dart';
import 'package:dart_angular_user_input/src/keyup_component.dart';
import 'package:dart_angular_user_input/src/loop_back_component.dart';
import 'package:dart_angular_user_input/src/little_tour_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [
    materialDirectives,
    ClickMeComponent,
    KeyUp1Component,
    KeyUp2Component,
    KeyUp3Component,
    KeyUp4Component,
    LoopBackComponent,
    LittleTourComponent,
  ],
  providers: const [materialProviders],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
