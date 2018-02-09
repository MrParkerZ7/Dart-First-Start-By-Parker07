import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dart_angular_web/app_component.dart';

// This is main application like java
void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    provide(LocationStrategy, useClass: HashLocationStrategy),
  ]);
}
