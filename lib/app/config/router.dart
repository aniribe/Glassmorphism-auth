import 'package:auto_route/auto_route_annotations.dart';
import 'package:glassmorphism_authentication/app/ui/views/home/home_view.dart';
import 'package:glassmorphism_authentication/app/ui/views/login/login_view.dart';
import 'package:glassmorphism_authentication/app/ui/views/singup/signup_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
  ],
)
class $Router {}
