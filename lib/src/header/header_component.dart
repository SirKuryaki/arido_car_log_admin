import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'header',
  styleUrls: const ['header_component.css'],
  templateUrl: 'header_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
)
class HeaderComponent {}
