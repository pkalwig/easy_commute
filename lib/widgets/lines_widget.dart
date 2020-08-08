import 'package:easy_commute/originDTO/origin_route_dto.dart';
import 'package:flutter/material.dart';

class LinesWidget extends StatelessWidget {
  final List<OriginRouteDTO> lines;

  LinesWidget({this.lines});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => GridView.builder(
        itemCount: lines.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: orientation == Orientation.portrait ? 5 : 9),
        itemBuilder: (context, index) => Card(
          child: InkResponse(
            highlightShape: BoxShape.rectangle,
            onTap: () {},
            child: Center(
              child: Text(lines[index].routeShortName),
            ),
          ),
        ),
      ),
    );
  }
}
