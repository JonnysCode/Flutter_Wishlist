import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'partial_builds_viewmodel.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}
