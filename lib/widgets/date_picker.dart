import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final DateTime initialDate;
  final ValueChanged<DateTime> onDateChanged;

  DatePicker({this.initialDate, this.onDateChanged});

  @override
  _DatePickerState createState() =>
      _DatePickerState(initialDate ?? DateTime.now());
}

class _DatePickerState extends State<DatePicker> {
  final _dateController = TextEditingController();
  final DateTime _initialDate;
  final DateTime _firstDate;
  final DateTime _lastDate;

  _DatePickerState(this._initialDate)
      : _firstDate = _initialDate,
        _lastDate = DateTime(_initialDate.year, _initialDate.month + 1, 0);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async {
          final newDate = await showDatePicker(
              context: context,
              initialDate: _initialDate,
              firstDate: _firstDate,
              lastDate: _lastDate);
          if (newDate == null) return;

          setState(() {
            _dateController.text = _trimTime(newDate);
          });
          if (widget.onDateChanged != null) widget.onDateChanged(newDate);
        },
        child: AbsorbPointer(
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Select date',
              labelText: 'Date',
              prefixIcon: Icon(Icons.calendar_today),
            ),
            controller: _dateController,
          ),
        ),
      );

  void initState() {
    super.initState();
    _dateController.text = _trimTime(_initialDate);
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  static String _trimTime(DateTime dateTime) =>
      dateTime.toString().split(' ').first;
}
