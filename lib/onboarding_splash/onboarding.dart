import 'package:flutter/material.dart';
import 'package:newc/onboarding_splash/data.dart';
import 'package:newc/onboarding_splash/home.page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  List<Onboard> myList = onboardList;
  PageController pager = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = myList.length - 1;
                    pager.jumpToPage(currentIndex);
                  });
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 30),
                )),
          ),
          SizedBox(
            height: 600,
            child: PageView.builder(
                controller: pager,
                itemCount: myList.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  final data = myList[index];
                  print(index);
                  return Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 12,
                        child: Image.asset(data.image),
                      ),
                      Text(data.title),
                      Text(data.subtitle)
                    ],
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                    myList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                                pager.jumpToPage(index);
                              });
                            },
                            child: AnimatedContainer(
                                width: currentIndex == index ? 16 : 12,
                                curve: Curves.bounceInOut,
                                height: 12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: currentIndex == index
                                      ? Colors.amber
                                      : Colors.grey,
                                ),
                                duration: Duration(milliseconds: 5)),
                          ),
                        )),
              ),
              // AnimatedSmoothIndicator(
              //     effect: WormEffect(),
              //     onDotClicked: (index) {
              //       setState(() {
              //         currentIndex = index;
              //         pager.jumpToPage(index);
              //       });
              //     },
              //     activeIndex: currentIndex,
              //     count: myList.length),
              TextButton(
                onPressed: () {
                  setState(() {
                    // currentIndex = index;
                    pager.jumpToPage(currentIndex - 1);
                  });
                },
                child: Text(
                  "Previous",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (currentIndex == myList.length - 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    setState(() {
                      // currentIndex = index;
                      pager.jumpToPage(currentIndex + 1);
                    });
                  }
                },
                child: Text(
                  currentIndex == myList.length - 1 ? "Continue" : "Next",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
