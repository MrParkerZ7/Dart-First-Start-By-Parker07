import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  // Every ng request COMMON_DIRECTIVES
  directives: const [materialDirectives, COMMON_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  List users = ["Park", "Fuck", "Duck", "Muck", "Suck"];
  List<Dog> dogs = [
    new Dog(1, "Bug", "Macro"),
    new Dog(2, "Judy", "Hush"),
    new Dog(3, "Jim", "Park")
  ];
}

class Dog {
  int no;
  String name, owner;

  Dog(this.no, this.name, this.owner);
}
