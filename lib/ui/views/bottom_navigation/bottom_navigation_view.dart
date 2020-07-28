import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wishlist/ui/views/home/home_view.dart';
import 'package:wishlist/ui/views/wishlist/wishlist_view.dart';

import 'bottom_navigation_viewmodel.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavigationViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          reverse: model.reverse,
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
            );
          },
          child: getViewForIndex(model.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[400],
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.art_track),
            ),
            BottomNavigationBarItem(
              title: Text('Wishlist'),
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BottomNavigationViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return WishListView();
      default:
        return HomeView();
    }
  }
}
