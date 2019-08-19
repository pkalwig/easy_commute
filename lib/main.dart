import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/agencies_dto.dart';
import 'package:easy_commute/dto_fetcher.dart';
import 'package:easy_commute/widgets/agencies_widget.dart';


void main() => runApp(MyApp());

final ThemeData _myAppTheme = _buildMyAppTheme();

ThemeData _buildMyAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      buttonTheme: base.buttonTheme.copyWith(buttonColor: base.accentColor));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Easy Commute', home: AgenciesView());
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
  Widget _body = Center(
    child: Text('Start scan'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _body = buildPost()),
        child: Icon(Icons.cloud_download),
      ),
      body: _body,
    );
  }

  FutureBuilder<AgenciesDTO> buildPost() {
    return FutureBuilder<AgenciesDTO>(
        future: _dtoFetcher.fetchAgencies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AgenciesWidget(snapshot.data);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }
}
