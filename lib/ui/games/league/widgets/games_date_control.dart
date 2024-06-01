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
          icon: const Icon(Icons.chevron_left),
          onPressed: onPreviousTap,
        ),
        GestureDetector(
          onTap: () => _showDatePicker(context),
          child: Text(
            datesModel.formattedDate,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: onNextTap,
        ),
      ],
    );
  }

  void _showDatePicker(BuildContext context) async {
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
