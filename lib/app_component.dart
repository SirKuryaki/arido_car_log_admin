import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'src/todo_list/todo_list_component.dart';
import 'src/users/users_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
@RouteConfig(const [
  const Route(path: '/users', name: 'Users', component: UsersComponent),
  const Route(path: '/todo', name: 'Todo', component: TodoListComponent)
])
class AppComponent {}
