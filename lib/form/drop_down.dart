// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DropDowns extends StatefulWidget {
  const DropDowns({
    super.key,
  });

  @override
  State<DropDowns> createState() => _DropDownsState();
}

class _DropDownsState extends State<DropDowns> {
  RangeValues rangeValues = RangeValues(0.0, 10.0);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());
    return Column(children: [
      // DropdownButton(
      //   isExpanded: true,
      //   value: intialValue,
      //   onChanged: (value) {
      //     intialValue = value!;
      //     setState(() {});
      //   },
      //   items: [
      //     DropdownMenuItem(value: "Male", child: Text("Male")),
      //     DropdownMenuItem(value: "Female", child: Text("Female")),
      //     DropdownMenuItem(value: "Other", child: Text("Other"))
      //   ],
      // ),
      // DropdownButtonFormField(
      //     value: intialValue,
      //     validator: (value) {
      //       if (value!.isNotEmpty) {
      //         return null;
      //       } else {
      //         return "error";
      //       }
      //     },
      //     items: [
      //       DropdownMenuItem(value: "Male", child: Text("Male")),
      //       DropdownMenuItem(value: "Female", child: Text("Female")),
      //       DropdownMenuItem(value: "Other", child: Text("Other"))
      //     ],
      //     onChanged: (value) {
      //       intialValue = value!;

      //       setState(() {});
      //     })

      // RadioListTile(
      //   title: Text("Option A"),
      //   value: "A",
      //   groupValue: grouPValue,
      //   onChanged: (value) {
      //     grouPValue = value!;
      //     setState(() {});
      //   },
      // ),
      // RadioListTile(
      //   title: Text("Option B"),
      //   value: "B",
      //   groupValue: grouPValue,
      //   onChanged: (value) {
      //     grouPValue = value!;
      //     setState(() {});
      //   },
      // ),
      // RadioListTile(
      //   title: Text("Option C"),
      //   value: "C",
      //   groupValue: grouPValue,
      //   onChanged: (value) {
      //     grouPValue = value!;
      //     setState(() {});
      //   },
      // ),

      CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("Option A"),
          subtitle: const Text(
              "I have agreed to all licence and agreement of the organization accroding to their terms and policy"),
          value: isChecked,
          onChanged: (value) {
            isChecked = value!;
            setState(() {});
          }),

      SwitchListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text("Remeber me"),
        value: isPassword,
        onChanged: (value) {
          isPassword = value;
          setState(() {});
        },
      ),
      Slider(
          value: value,
          min: 0.0,
          max: 10.0,
          label: "$value",
          divisions: 10,
          onChanged: (val) {
            setState(() {
              value = val;
            });
          }),

      RangeSlider(
          values: rangeValues,
          divisions: 10,
          min: 0.0,
          max: 10.0,
          labels: labels,
          onChanged: (value) {
            setState(() {
              rangeValues = value;
            });
          })
    ]);
  }

  String intialValue = "Male";
  String grouPValue = "A";
  bool isChecked = false;
  bool isPassword = true;
  double value = 1;
}
