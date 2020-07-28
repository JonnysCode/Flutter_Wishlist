// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wishlist/ui/views/startup/startup_view.dart';
import 'package:wishlist/ui/views/home/home_view.dart';
import 'package:wishlist/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:wishlist/ui/views/wishlist/wishlist_view.dart';
import 'package:wishlist/ui/views/signup/signup_view.dart';
import 'package:wishlist/ui/views/login/login_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String bottomNavigation = '/bottom-navigation';
  static const String wishListView = '/wish-list-view';
  static const String signUpView = '/sign-up-view';
  static const String loginView = '/login-view';
  static const all = <String>{
    startupView,
    homeView,
    bottomNavigation,
    wishListView,
    signUpView,
    loginView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.bottomNavigation, page: BottomNavigation),
    RouteDef(Routes.wishListView, page: WishListView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.loginView, page: LoginView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    BottomNavigation: (RouteData data) {
      var args = data.getArgs<BottomNavigationArguments>(
          orElse: () => BottomNavigationArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavigation(key: args.key),
        settings: data,
      );
    },
    WishListView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WishListView(),
        settings: data,
      );
    },
    SignUpView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    LoginView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//BottomNavigation arguments holder class
class BottomNavigationArguments {
  final Key key;
  BottomNavigationArguments({this.key});
}
