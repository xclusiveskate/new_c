import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:newc/Carousel&Sliver/carousel/data_model.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

// import 'package:flutter1/test/next/advance/onboard/data.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;
  List<myCarousel> myCarous = carouselList;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text('Carousel image slider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: myCarous.length,
                carouselController: controller,
                itemBuilder: (context, index, list) {
                  final data = myCarous[index];
                  return SizedBox(
                    height: 300,
                    width: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        data.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  initialPage: _currentPage,
                  reverse: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedSmoothIndicator(
                  onDotClicked: (index) {
                    setState(() {
                      _currentPage = index;
                      controller.jumpToPage(index);
                    });
                  },
                  activeIndex: _currentPage,
                  count: myCarous.length),
              Container(height: 200, width: 200, child: Image.network(image))
            ],
          ),
        ));
  }

  var image =
      "data:image/jpeg;base64,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";
}
