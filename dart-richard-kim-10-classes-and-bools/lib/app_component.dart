import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// This is what we call classes bools
// We change style by using boolean in class represent switch key

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent {
  String inputValue = "Parker_z7";
  String inputType = "button";
  String inputName = "Submit";
  bool someClass = true;

  changeClass() {
    if (someClass) {
      someClass = false;
    } else {
      someClass = true;
    }
  }
}
