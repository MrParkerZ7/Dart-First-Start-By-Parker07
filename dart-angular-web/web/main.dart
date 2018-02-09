import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dart_angular_web/app_component.dart';
import 'package:dart_angular_web/in_memory_data_service.dart';
import 'package:http/browser_client.dart';

// This is main application like java
void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    provide(LocationStrategy, useClass: HashLocationStrategy),
    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: [])
  ]);
}
