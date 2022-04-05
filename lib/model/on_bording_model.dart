class OnBoarding {
  final String description;
  final String title;
  final String image;
  OnBoarding({
    required this.description,
    required this.title,
    required this.image,
  });
}

List<OnBoarding> screens = [
  OnBoarding(
    description:
        "Explore curated lists of top restaurants, cafes, pubs, and bars in Mumbai, based on trends.",
    title: "Eat",
    image: "assest/image/1.gif",
  ),
  OnBoarding(
    description:
        "Discover restaurants by type of meal, See menus and photos for nearby restaurants and bookmark your favorite places on the go",
    title: "Search",
    image: "assest/image/2.gif",
  ),
  OnBoarding(
    description:
        "Best restaurants delivering to your doorstep, Browse menus and build your order in seconds",
    title: "Order",
    image: "assest/image/3.gif",
  ),
];
