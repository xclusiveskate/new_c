import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickDate extends StatefulWidget {
  const PickDate({super.key});

  @override
  State<PickDate> createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController datetimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: dateController,
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2050),
            );
            if (pickeddate != null) {
              dateController.text =
                  DateFormat('MM - dd - yyyy').format(pickeddate).toString();
            }
          },
          decoration: InputDecoration(hintText: "Show date"),
        ),
        TextField(
          controller: timeController,
          onTap: () async {
            TimeOfDay? pickedTime = await showTimePicker(
                context: context, initialTime: TimeOfDay.now());
            if (pickedTime != null) {
              timeController.text = pickedTime.format(context).toString();
            }
          },
          decoration: InputDecoration(hintText: "Show time"),
        ),
        TextField(
          controller: datetimeController,
        ),
        ElevatedButton(
          onPressed: () async {
            DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050));
            if (date != null) {
              TimeOfDay? time = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());
              if (time != null) {
                dateController.text =
                    DateFormat('dd / MM / yyyy').format(date).toString();
                timeController.text = time.format(context).toString();

                datetimeController.text =
                    DateFormat('dd / MM / yyyy').format(date).toString() +
                        " " +
                        time.format(context).toString();
              }
            }
          },
          child: Text("Pick date and time"),
        )
      ],
    );
  }
}
