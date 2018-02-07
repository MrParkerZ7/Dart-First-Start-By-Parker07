import 'package:angular_forms/angular_forms.dart';
import 'package:dart_angular_web/app_component.dart';

import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'package:angular/angular.dart';
import 'src/hero_detail_component.dart';

// Use to config component of dart
@Component(
    selector: 'my-app', // select tag to render in html page
    styleUrls: const ['app_component.css'], // select style import file
    directives: const [CORE_DIRECTIVES, HeroDetailComponent],
    // ..
    templateUrl:
        'app_component.html') // Use for fetch html file to part of component

// class app which we choose to
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selectedHero;

  void onSelect(Hero hero) => selectedHero = hero;
}
