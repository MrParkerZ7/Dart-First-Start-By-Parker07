import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// Custom structural directives.
// We use it when we have to do much thing about logic to display the view.

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, COMMON_DIRECTIVES, SomeDirective],
  providers: const [materialProviders],
)
class AppComponent {
  List<int> something = [1, 2, 3, 4, 5];

  List<Product> products = [
    new Product(159, "Cable"),
    new Product(20, "pen"),
    new Product(59, "paper"),
    new Product(45, "noot book"),
    new Product(199, "headphone")
  ];
}

class Product {
  int price;
  String kind;

  Product(this.price, this.kind);
}

@Directive(selector: '[displayThis]')
class SomeDirective {
  TemplateRef _templateRef; // This is a tag which we input.
  ViewContainerRef _viewContainer; // This is a controller of code.

  SomeDirective(this._templateRef, this._viewContainer);

  @Input() // This input refer to the tag which define *displayThis inside of that.
  set displayThis(List<int> something) {
    if (something[0] == 1) {
      _viewContainer.createEmbeddedView(_templateRef);
    } else {
      _viewContainer.clear(); // .clear() this mean destroy the view.
    }
  }
}
