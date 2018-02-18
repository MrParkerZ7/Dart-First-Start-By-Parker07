import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'dart:html';

// I'm so FUCKING SICK WITH THIS ERROR!!

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,COMMON_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  TextInputElement name = querySelector('#name');
  NumberInputElement age = querySelector('#age');

  onClick() {
    print("YourName = ${name.value} & YourAge = ${age.value}");
  }
}
