import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// Also FUCKER ERROR!!

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,COMMON_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  String message = "input message";
}
