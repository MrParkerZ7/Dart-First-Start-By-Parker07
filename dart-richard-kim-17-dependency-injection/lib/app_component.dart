import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, COMMON_DIRECTIVES],
  providers: const [materialProviders, Fox], // Declare Fox here for injectable
)
class AppComponent {
  Fox fox;

  AppComponent(this.fox) {
    fox.layers = 2;
    fox.flour = "none";
  }

  void addLayers() {
    fox.layers = 500;
    fox.flour = "White";
  }
}

// Define annotation @Injectable class for injectable Fox
@Injectable()
class Fox {
  int layers;
  String flour;
}
