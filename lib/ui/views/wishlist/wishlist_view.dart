import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/ui/smart_widgets/enter_code/enter_code_view.dart';
import 'wishlist_viewmodel.dart';

class WishListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WishListViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => locator<WishListViewModel>(),
    );
  }
}