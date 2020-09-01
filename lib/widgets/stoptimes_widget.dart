import 'package:easy_commute/originDTO/origin_line_stop_times_dto.dart';
import 'package:flutter/material.dart';

class StopTimesWidget extends StatelessWidget {
  final OriginLineStopTimesDTO _stopTimes;

  StopTimesWidget(this._stopTimes);

  @override
  Widget build(BuildContext context) => ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: _stopTimes.stopTimes.length,
      itemBuilder: (context, index) => ListTile(
            title: Text(_stopTimes.stopTimes[index].departureTime),
            subtitle:
                Text('Arrival: ${_stopTimes.stopTimes[index].arrivalTime}'),
          ));
}
