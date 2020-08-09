import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/app/router.gr.dart';
import 'package:wishlist/services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();

    if (hasLoggedInUser) {
      _navigationService.navigateTo(Routes.homeView);
    } else {
      _navigationService.navigateTo(Routes.loginView);
    }
  }
}
