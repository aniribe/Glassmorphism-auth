import 'package:glassmorphism_authentication/app/config/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void redirectBack() => _navigationService.popRepeated(1);
}
