import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, COMMON_DIRECTIVES, BikeCollection],
  providers: const [materialProviders],
)
class AppComponent {}

//Actually we can also import from another file.
@Directive(selector: '[bikeCollection]')
class BikeCollection {
  final ElementRef e; // ElementRef Which mean reference to element of tag

  BikeCollection(this.e);

  void zoom([String size]) {
    e.nativeElement.style.fontSize = size;
  }

  @HostListener('mouseover')
  void onMouseOver() {
    zoom('60px');
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    zoom();
  }

  @HostListener('click')
  void onClick() {
    e.nativeElement.style.color = "red";
  }
}
