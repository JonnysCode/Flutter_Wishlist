import 'package:auto_route/auto_route_annotations.dart';
import 'package:wishlist/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:wishlist/ui/views/home/home_view.dart';
import 'package:wishlist/ui/views/login/login_view.dart';
import 'package:wishlist/ui/views/signup/signup_view.dart';
import 'package:wishlist/ui/views/startup/startup_view.dart';
import 'package:wishlist/ui/views/wishlist/wishlist_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: BottomNavigation),
    MaterialRoute(page: WishListView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: LoginView),
  ],
)
class $Router {}