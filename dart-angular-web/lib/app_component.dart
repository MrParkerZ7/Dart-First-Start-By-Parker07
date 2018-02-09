/*
 * Copyright (c) 2018. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 */

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_service.dart';
import 'src/heroes_component.dart';
import 'src/dashboard_component.dart';
import 'src/hero_detail_component.dart';

@Component(
  selector: 'my-app', // Select the tag to inject template
  templateUrl: 'app_component.html', // Define local template
  styleUrls: const ['app_component.css'], // Include css style sheet
  directives: const [ROUTER_DIRECTIVES], //
  providers: const [HeroService],
)
@RouteConfig(const [
  const Redirect(path: '/', redirectTo: const ['Dashboard']),
  const Route(
    path: '/dashboard',
    name: 'Dashboard',
    component: DashboardComponent,
  ),
  const Route(
    path: '/detail/:id',
    name: 'HeroDetail',
    component: HeroDetailComponent,
  ),
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent)
])
class AppComponent {
  final title = 'Tour of Heroes';
}
