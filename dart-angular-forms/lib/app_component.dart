import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'src/hero_form_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  template: '<hero-form></hero-form>',
  directives: const [materialDirectives, HeroFormComponent],
  providers: const [materialProviders,],
)
class AppComponent {}
