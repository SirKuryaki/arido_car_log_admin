import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import '../users/users_service.dart';

@Component(
  selector: 'header',
  styleUrls: const [
    'package:angular_components/app_layout/layout.scss.css',
    'header_component.css'
  ],
  templateUrl: 'header_component.html',
  directives: const [
    ROUTER_DIRECTIVES,
    CORE_DIRECTIVES,
    materialDirectives,
  ],
)
class HeaderComponent {
  final UsersService usersService;
  HeaderComponent(this.usersService);
}
