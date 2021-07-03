import 'package:flutter/material.dart';

import 'package:easy_commute/views/agencies_view.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
              child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Welcome', style: Theme.of(context).textTheme.headline5),
                      Text('Select transport provider', style: Theme.of(context).textTheme.subtitle1),
                      ElevatedButton(
                        child: Text('Begin'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AgenciesView()));
                          },
                      )
                    ]
                  )
              )
          )
  );
}
