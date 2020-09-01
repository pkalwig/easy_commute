import 'dart:async';

import 'package:easy_commute/dto_fetcher.dart';
import 'package:easy_commute/originDTO/origin_line_stop_times_dto.dart';
import 'package:easy_commute/originDTO/origin_route_dto.dart';
import 'package:easy_commute/widgets/date_picker.dart';
import 'package:easy_commute/widgets/stoptimes_widget.dart';
import 'package:flutter/material.dart';

class LineTimetableView extends StatefulWidget {
  final OriginRouteDTO _line;

  LineTimetableView(this._line);

  @override
  _LineTimetableViewState createState() => _LineTimetableViewState();
}

class _LineTimetableViewState extends State<LineTimetableView> {
  DateTime _selectedDate;
  Future<OriginLineStopTimesDTO> _getLineStopTimes;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _getLineStopTimes = DtoFetcher()
        .fetchLineStopTimes(_selectedDate, widget._line.routeId);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
              '${widget._line.routeShortName}  (${widget._line.routeLongName})'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DatePicker(
                initialDate: _selectedDate,
                onDateChanged: (newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                },
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: _getLineStopTimes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return StopTimesWidget(snapshot.data);
                  } else if (snapshot.hasError) {
                    return Center(child: Text("${snapshot.error}"));
                  }

                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      );
}
