import 'package:ferry/ferry.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raftlabs_assignment/app_client.dart';
import 'package:raftlabs_assignment/modules/home/home_module.dart';
import 'package:raftlabs_assignment/modules/login/login_module.dart';
import 'package:raftlabs_assignment/values/app_routes.dart';

class AppModules extends Module {
  @override
  void routes(RouteManager r) {
    r
      ..module(
        Modular.initialRoute,
        module: LoginModule(),
      )
      ..module(
        AppRoutes.homeScreen,
        module: HomeModule(),
      );
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton<TypedLink>(
      AppClient.initializeClient,
    );
  }
}
