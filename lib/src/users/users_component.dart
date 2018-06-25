import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'users_service.dart';

@Component(
  selector: 'users',
  styleUrls: const ['users_component.css'],
  templateUrl: 'users_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
)
class UsersComponent implements OnInit {
  
  final UsersService usersService;

  UsersComponent(this.usersService);

  @override
  Future<Null> ngOnInit() async {

  }
}
