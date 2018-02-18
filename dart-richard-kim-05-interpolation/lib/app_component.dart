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
  String type = "button";
  String message = "Hello there";
  String placeholder = "Name";
  User user = new User(15, "Parker_z7");
}

class User {
  int id;
  String name;

  User(this.id, this.name);
}
