import 'package:glassmorphism_authentication/app/config/locator.dart';
import 'package:glassmorphism_authentication/app/config/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void redirectToSignUp() => _navigationService.navigateTo(Routes.signUpView);
}
