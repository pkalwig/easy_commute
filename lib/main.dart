import 'package:easy_commute/DTO/topology_dto.dart';
import 'package:easy_commute/DTO/topology_versions_dto.dart';
import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/agencies_dto.dart';
import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:easy_commute/dto_fetcher.dart';

void main() => runApp(MyApp());

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
      appBar: AppBar(
        title: Text('Easy Commute'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _body = buildPost()),
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

class AgenciesWidget extends StatelessWidget {
  final AgenciesDTO _agenciesDto;

  AgenciesWidget(this._agenciesDto);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _agenciesDto.agencies.length,
      itemBuilder: ((context, index) =>
          AgencyWidget(_agenciesDto.agencies[index])),
    );
  }
}

class AgencyWidget extends StatelessWidget {
  final AgencyDTO _agency;

  AgencyWidget(this._agency);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text("${_agency.id}"),
      Text(_agency.name),
      TopologyVersionsWidget(_agency.topologyVersions)
    ]);
  }
}

class TopologyVersionsWidget extends StatelessWidget {
  final TopologyVersionsDTO _topologyVersionsDTO;

  TopologyVersionsWidget(this._topologyVersionsDTO);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _topologyVersionsDTO.topologies.length,
      itemBuilder: (context, index) =>
          TopologyWidget(_topologyVersionsDTO.topologies[index]),
    );
  }
}

class TopologyWidget extends StatelessWidget {
  final TopologyDTO _topologyDTO;

  TopologyWidget(this._topologyDTO);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("${_topologyDTO.versionNumber}"),
        Text(_topologyDTO.startDate),
        Text(_topologyDTO.endDate)
      ],
    );
  }
}
