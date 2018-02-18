import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:dart_richard_kim_18_dependency_injection_part_2/inject.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, COMMON_DIRECTIVES],
  providers: const [
    materialProviders,
    Fox,
    Ingredients
  ], // Declare Fox here for injectable
)
class AppComponent {
  Fox fox;

  AppComponent(this.fox) {
    fox.layers = 2;
    fox.ingredients.flour = "none";
  }

  void addLayers() {
    fox.layers = 500;
    fox.ingredients.flour = "White";
  }
}
