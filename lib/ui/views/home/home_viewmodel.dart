import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/app/router.gr.dart';

@singleton
class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToSignUp() async {
    await _navigationService.navigateTo(Routes.signUpView);
  }

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }
}