import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:acl_project/app_component.dart';

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    // During development, it is more convenient to use HashLocationStrategy
    // because pub serve does not support deep linking.
    provide(LocationStrategy, useClass: HashLocationStrategy),
  ]);
}
