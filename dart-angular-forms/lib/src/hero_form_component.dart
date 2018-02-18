import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

const List<String> _powers = const [
  'Super Fab',
  'Super Flexible',
  'Super Hot',
  'Really Smart',
  'Weather Changer'
];

@Component(
  selector: 'hero-form',
  templateUrl: 'hero_form_component.html',
  directives: const [CORE_DIRECTIVES, formDirectives],
)
class HeroFormComponent {
  Hero model = new Hero(18, '', _powers[0], '');
  bool submitted = false;

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;

  /// Returns a map of CSS class names representing the state of [control].
  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }

  void clear() {
    model.name = '';
    model.power = _powers[0];
    model.alterEgo = '';
  }
}
