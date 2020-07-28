import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/ui/smart_widgets/enter_code/enter_code_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
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
                'Enter Code to view wishlist',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: EnterCode(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Register or login to create your own wishlist',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              width: 140,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () => model.navigateToSignUp(),
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              width: 140,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () => model.navigateToLogin(),
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => locator<HomeViewModel>(),
    );
  }
}