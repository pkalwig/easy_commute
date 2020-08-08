import 'package:easy_commute/originDTO/origin_route_dto.dart';
import 'package:flutter/material.dart';

class LineTimetableView extends StatelessWidget {
  final OriginRouteDTO _line;

  LineTimetableView(this._line);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('${_line.routeShortName}  (${_line.routeLongName})'),
        ),
      );
}
