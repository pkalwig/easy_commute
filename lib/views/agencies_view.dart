import 'package:flutter/material.dart';

import 'package:easy_commute/originDTO/origin_agencies_dto.dart';
import 'package:easy_commute/dto_fetcher.dart';
import 'package:easy_commute/widgets/agencies_widget.dart';

class AgenciesView extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: buildPost()
        ));

  FutureBuilder<OriginAgenciesDTO> buildPost() {
    return FutureBuilder<OriginAgenciesDTO>(
        future: DtoFetcher().fetchAgencies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AgenciesWidget(snapshot.data);
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
