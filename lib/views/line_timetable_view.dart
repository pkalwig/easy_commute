import 'package:easy_commute/originDTO/origin_route_dto.dart';
import 'package:easy_commute/widgets/date_picker.dart';
import 'package:flutter/material.dart';

class LineTimetableView extends StatelessWidget {
  final OriginRouteDTO _line;

  LineTimetableView(this._line);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('${_line.routeShortName}  (${_line.routeLongName})'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DatePicker(
                initialDate: DateTime.parse('2020-08-20'),
              ),
            ),
          ],
        ),
      );
}
