import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/app/router.gr.dart';
import 'package:wishlist/services/authentication_service.dart';

@singleton
class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  Future navigateToSignUp() async {
    await _navigationService.navigateTo(Routes.signUpView);
  }

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }

  Future signOut() async {
    var signedOut = await _authenticationService.signOut();
    if (signedOut == null) {
      await _navigationService.navigateTo(Routes.startupView);
    } else {
      // TODO: show dialog
    }
  }
}
