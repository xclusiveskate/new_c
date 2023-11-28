class myCarousel {
  final String image;
  final String title;
  final String subtitle;

  myCarousel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<myCarousel> carouselList = [
  myCarousel(
      image: "assets/images/undraw_Completing_re_i7ap.png",
      title: "Welcome to Free Cash",
      subtitle: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
  myCarousel(
      image: "assets/images/undraw_real_time_analytics_re_yliv.png",
      title: "Free Cash",
      subtitle: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
  myCarousel(
      image: "assets/images/undraw_Voice_interface_re_206s.png",
      title: "Enjoy!!",
      subtitle: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
];
