import 'package:flutter/material.dart';

class ContainerCardSizedBox extends StatelessWidget {
  const ContainerCardSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(

                // shape: BoxShape.circle,
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(40),
                ),
                gradient: LinearGradient(colors: [Colors.blue, Colors.green])),
            alignment: Alignment.topCenter,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Text("I am a student"),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox.shrink(),
        SizedBox(
          height: 200,
          width: 300,
          child: Card(
            // color: Colors.lightBlue,
            shadowColor: Colors.amber,
            elevation: 3,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                    strokeAlign: BorderSide.strokeAlignInside,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20)),
            child: Align(alignment: Alignment.center, child: Text("data")),
          ),
        )
      ],
    );
  }
}
