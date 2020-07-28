// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:wishlist/services/authentication_service.dart';
import 'package:wishlist/services/third_party_services_modul.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wishlist/ui/views/home/home_viewmodel.dart';
import 'package:wishlist/ui/views/wishlist/wishlist_viewmodel.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<AuthenticationService>(() => AuthenticationService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);

  //Eager singletons must be registered in the right order
  g.registerSingleton<HomeViewModel>(HomeViewModel());
  g.registerSingleton<WishListViewModel>(WishListViewModel());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
