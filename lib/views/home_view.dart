import 'package:easy_commute/dto_fetcher.dart';
import 'package:easy_commute/originDTO/origin_scheduled_routes_dto.dart';
import 'package:easy_commute/widgets/lines_widget.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder<OriginScheduledRoutesDTO>(
            future: DtoFetcher().fetchScheduledRoutes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return LinesWidget(lines: snapshot.data.scheduledRoutes.values.first.routes);
              }
              else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
              return Center(child: CircularProgressIndicator());
            },
          )
        ),
      ),
    );
}
