import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_team_component.dart';

@Component(
    selector: 'hero-details',
    template: '''
      <h2>{{hero.name}}</h2>
      <hero-team [hero]="hero"></hero-team>
      <ng-content></ng-content>''',
    styleUrls: const ['hero_details_component.css'],
    directives: const [HeroTeamComponent])
class HeroDetailsComponent {
  @Input()
  Hero hero;
}
