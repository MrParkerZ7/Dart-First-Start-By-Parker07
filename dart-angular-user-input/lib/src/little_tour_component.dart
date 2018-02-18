import 'package:angular/angular.dart';
import 'dart:html';

// Now we use addHero() represent add String to String
@Component(
  selector: 'little-tour',
  template: '''
    <p>Little-tour</p>
    <input #newHero
      (keyup.enter)="addHero(newHero.value)"
      (blur)="addHero(newHero.value); newHero.value='' ">
    <button (click)="addHero(newHero.value)">Add</button>
    <ul><li *ngFor="let hero of heroes">{{hero}}</li></ul>
  ''',
  directives: const [CORE_DIRECTIVES],
)
class LittleTourComponent {
  List<String> heroes = ['Aoi', 'Loli', 'Merody', 'hitaichi'];

  void addHero(String newHero) {
    if (newHero?.length > 0) {
      heroes.add(newHero);
    }
  }
}
