import 'package:flutter/material.dart';

class myForm extends StatefulWidget {
  const myForm({super.key});

  @override
  State<myForm> createState() => _myFormState();
}

class _myFormState extends State<myForm> {
// -> form -> state -> textfield -> validator
  TextEditingController controller = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  String firstName = "";
  final formKey = GlobalKey<FormState>();
  final focustInput = FocusNode();

  @override
  void initState() {
    focustInput.addListener(() {
      print("""object""");
    });
    usernameController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    focustInput.removeListener(() {});
    usernameController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              child: TextField(
                // readOnly: true,
                controller: controller,
                onTap: () {},
                obscureText: false,
                // maxLines: null,
                // maxLength: 10,
                // minLines: null,
                expands: false,
                onEditingComplete: () {},
                onChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                  print(firstName);
                },
                decoration: InputDecoration(
                  // hintText: "name",
                  labelText: "name",
                  // fillColor: Colors.green,
                  // filled: true,
                  prefixIcon: Icon(Icons.person),

                  suffixIcon: IconButton(
                    onPressed: () {
                      print(firstName);
                    },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    focusNode: focustInput,
                    onEditingComplete: () {
                      focustInput.nextFocus();
                      // setState(() {});
                    },
                    validator: (value) {
                      // final username = RegExp('r^[a-z]{6,}');
                      if (value!.isNotEmpty && value.length >= 6) {
                        return null;
                      } else {
                        return "There is error";
                      }
                    },
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    focusNode: focustInput,
                    onEditingComplete: () {
                      focustInput.unfocus();
                    },
                    controller: passowrdController,
                    validator: (value) {
                      if (value!.isNotEmpty && value.length >= 3) {
                        return null;
                      } else {
                        return '3 letter required';
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "password",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  DropdownButtonFormField(
                      value: intialValue,
                      validator: (value) {
                        if (value != null) {
                          return null;
                        } else {
                          return "error";
                        }
                      },
                      items: [
                        DropdownMenuItem(value: "Male", child: Text("Male")),
                        DropdownMenuItem(
                            value: "Female", child: Text("Female")),
                        DropdownMenuItem(value: "Other", child: Text("Other"))
                      ],
                      onChanged: (value) {
                        intialValue = value!;

                        setState(() {});
                      })
                ],
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate() == true) {
                  formKey.currentState!.save();
                }
                formKey.currentState!.validate();
              },
              child: Text("Validate User"))
        ],
      ),
    );
  }

  String intialValue = "Male";
}
