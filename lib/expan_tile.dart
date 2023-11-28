import 'package:flutter/material.dart';

class ExpanseTile extends StatefulWidget {
  const ExpanseTile({super.key});

  @override
  State<ExpanseTile> createState() => _ExpanseTileState();
}

class _ExpanseTileState extends State<ExpanseTile> {
  int curIndex = 0;
  int curStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion"),
      ),
      drawer: Drawer(
        // width: MediaQuery.of(context).size.width / 2,
        backgroundColor: Colors.amberAccent,
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                margin: EdgeInsets.all(0),
                accountName: Text("Sholape"),
                accountEmail: Text("kunle@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/sqi.jpg'),
                ),
              ),
            ),
            ListTile(
              tileColor: curIndex == 0 ? Colors.blue : Colors.transparent,
              title: Text("Home Page"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  curIndex = 0;
                });
              },
            ),
            ListTile(
              tileColor: curIndex == 1 ? Colors.blue : Colors.transparent,
              title: Text("About Page"),
              onTap: () {
                setState(() {
                  curIndex = 1;
                });
              },
            ),
            ListTile(
              tileColor: curIndex == 2 ? Colors.blue : Colors.transparent,
              title: Text("Other Page"),
              onTap: () {
                setState(() {
                  curIndex = 2;
                });
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text('expansion'),
            children: [
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
              Text("ejhfjewhfwebjfhwe"),
            ],
          ),
          ExpansionPanelList.radio(
            children: [
              ExpansionPanelRadio(
                  value: 1,
                  headerBuilder: (context, isExpanded) {
                    return Text("tiles");
                  },
                  body: Column(
                    children: [
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                    ],
                  )),
              ExpansionPanelRadio(
                  value: 2,
                  headerBuilder: (context, isExpanded) {
                    return Text("tiles");
                  },
                  body: Column(
                    children: [
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                      Text("ejhfjewhfwebjfhwe"),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stepper(
              currentStep: curStep,
              type: StepperType.vertical,
              connectorColor: MaterialStateProperty.all(Colors.blue),
              connectorThickness: 2,
              controlsBuilder: (context, details) {
                if (curStep == 0) {
                  return ElevatedButton(
                      onPressed: () {
                        details.onStepContinue!();
                      },
                      child: Text("Next"));
                } else if (curStep == 3) {
                  return ElevatedButton(
                      onPressed: () {}, child: Text("Submit data"));
                } else {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              details.onStepCancel!();
                            },
                            child: Text("Cancel")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              details.onStepContinue!();
                            },
                            child: Text("Next")),
                      ),
                    ],
                  );
                }
              },
              onStepTapped: (index) {
                setState(() {
                  curStep = index;
                });
              },
              onStepContinue: () {
                // if (curStep != 3) {

                // }
                setState(() {
                  // curStep += 1;
                  curStep = curStep == 3 ? 3 : curStep + 1;
                });
              },
              onStepCancel: () {
                // if (curStep != 0) {

                // }
                setState(() {
                  // curStep -= 1;
                  curStep = curStep == 0 ? 0 : curStep - 1;
                });
              },
              steps: [
                Step(
                    isActive: curStep > -1,
                    title: Text("Step 1"),
                    content: Text("Step 1 content")),
                Step(
                    isActive: curStep > 0,
                    title: Text("Step 2"),
                    content: Text("Step 2 content")),
                Step(
                    isActive: curStep > 1,
                    title: Text("Step 3"),
                    content: Text("Step 3 content")),
                Step(
                    isActive: curStep > 2,
                    title: Text("Step 4"),
                    content: Text("Step 4 content")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
