import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// This is a *ngIf it's work like if else logic.
// But it use for control tag visible or disable view.

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, CORE_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  bool oneExist = true;
  bool secondExist = false;
  bool thirdExist;
  String oneShow = "block";
  String secondShow = "show";
  String thirdShow;
}
