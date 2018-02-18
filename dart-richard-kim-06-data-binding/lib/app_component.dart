import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent {
  String type = "text";
  String value = "Binding";
  String inner =
      "This is data binding which we use [ ] to encapsulate attribute and declare instant value from class.";
}
