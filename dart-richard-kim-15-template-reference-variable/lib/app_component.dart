import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, COMMON_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  List nameList = ["Fuck", "Duck", "Puck", "Luck"];
}
