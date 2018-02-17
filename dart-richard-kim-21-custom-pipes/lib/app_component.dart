import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
  pipes: const [MoneyRemain], // We have to define pipe here tool.
)
class AppComponent {
  int money = 20000;
}

@Pipe('moneyRemain') // use like directive
class MoneyRemain extends PipeTransform {
  // Method not fix parameter but fixed method name.
  String transform(int money, int bonus, int multi, String name) =>
      "${money + (bonus * multi)} by boss $name";
}
