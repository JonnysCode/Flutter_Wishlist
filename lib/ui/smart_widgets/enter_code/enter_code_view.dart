import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'enter_code_viewmodel.dart';

class EnterCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EnterCodeViewModel>.reactive(
      builder: (context, model, child) => Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[200],
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 6,
                color: Colors.black.withOpacity(.2),
                offset: Offset(0.0, 6.0))
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: model.codeController,
                style: TextStyle(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter Code for Wishlist',
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              elevation: 5.0,
              onPressed: () {},
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      viewModelBuilder: () => EnterCodeViewModel(),
    );
  }
}
