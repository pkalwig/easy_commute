import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/agencies_dto.dart';
import 'package:easy_commute/dto_fetcher.dart';
import 'package:easy_commute/widgets/agencies_widget.dart';

void main() => runApp(MyApp());

final ThemeData _myAppTheme = _buildMyAppTheme();

ThemeData _buildMyAppTheme() {
  final ThemeData base = ThemeData.light();
  return base;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Easy Commute',
        home: WelcomeView(),
        theme: _myAppTheme);
  }
}

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: <Widget>[
        Text(
          'Welcome',
          style: Theme.of(context).textTheme.headline,
        ),
        Text('Select transport provider',
            style: Theme.of(context).textTheme.subhead),
        RaisedButton(
          child: Text('Begin'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AgenciesView()));
          },
          color: Theme.of(context).colorScheme.secondary,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    ))));
  }
}

class AgenciesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AgenciesViewState();
  }
}

class AgenciesViewState extends State<AgenciesView> {
  final DtoFetcher _dtoFetcher = DtoFetcher();
  Widget _body = SafeArea(child: Center(child: Text('Start scan')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPost(),
    );
  }

  FutureBuilder<AgenciesDTO> buildPost() {
    return FutureBuilder<AgenciesDTO>(
        future: _dtoFetcher.fetchAgencies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AgenciesWidget(snapshot.data);
          } else if (snapshot.hasError) {
            return SafeArea(child: Center(child: Text("${snapshot.error}")));
          }
          return SafeArea(child: Center(child: CircularProgressIndicator()));
        });
  }
}
