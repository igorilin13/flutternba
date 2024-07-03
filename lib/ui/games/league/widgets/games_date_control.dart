import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternba/domain/date/league_dates_model.dart';

class GamesDateControl extends StatelessWidget {
  final LeagueDatesModel datesModel;
  final VoidCallback onPreviousTap;
  final VoidCallback onNextTap;
  final Function(DateTime) onDateSelected;

  const GamesDateControl({
    super.key,
    required this.datesModel,
    required this.onPreviousTap,
    required this.onNextTap,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 28,
          icon: const Icon(Icons.chevron_left),
          onPressed: onPreviousTap,
        ),
        InkWell(
          onTap: () => _showDatePicker(context),
          child: Row(
            children: [
              const Icon(Icons.date_range, size: 16),
              const SizedBox(width: 6),
              Text(
                datesModel.formattedDate,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        IconButton(
          iconSize: 28,
          icon: const Icon(Icons.chevron_right),
          onPressed: onNextTap,
        ),
      ],
    );
  }

  void _showDatePicker(BuildContext context) async {
    if (Platform.isIOS) {
      _showIOSPicker(context);
    } else {
      await _showAndroidPicker(context);
    }
  }

  void _showIOSPicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 280,
        padding: const EdgeInsets.only(top: 8),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoDatePicker(
            initialDateTime: datesModel.selectedDate,
            minimumDate: datesModel.minDate,
            maximumDate: datesModel.maxDate,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: onDateSelected,
          ),
        ),
      ),
    );
  }

  Future<void> _showAndroidPicker(BuildContext context) async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: datesModel.selectedDate,
      firstDate: datesModel.minDate,
      lastDate: datesModel.maxDate,
    );

    if (newDate != null) {
      onDateSelected(newDate);
    }
  }
}
