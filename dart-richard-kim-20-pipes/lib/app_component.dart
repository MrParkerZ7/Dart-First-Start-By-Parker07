import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [materialDirectives],
    providers: const [materialProviders],
    pipes: const [COMMON_PIPES],
)
class AppComponent {
  DateTime now = new DateTime(1994, 11, 18);
  num no = 0.2341;
}
