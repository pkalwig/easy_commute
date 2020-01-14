import 'package:easy_commute/originDTO/origin_route_dto.dart';
import 'package:flutter/material.dart';

class LinesWidget extends StatelessWidget {
  final List<OriginRouteDTO> lines;

  LinesWidget({this.lines});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: lines.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Card(
        child: Center(
          child: Text(lines[index].routeShortName),
        ),
      ),
    );
  }
}
