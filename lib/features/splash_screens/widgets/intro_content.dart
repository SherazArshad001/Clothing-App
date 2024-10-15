class IntroContent {
  String image;
  String title;
  String description;
  IntroContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<IntroContent> content = [
  IntroContent(
    image: 'assets/images/model.png',
    title: 'CareDiscover something newPoint',
    description: 'Special new arrivals just for you',
  ),
  IntroContent(
    image: 'assets/images/model1.png',
    title: 'Update trendy outfit',
    description: 'Favorite brands and hottest trends',
  ),
  IntroContent(
    image: 'assets/images/model2.png',
    title: 'Explore your true style',
    description: "Relax and let us bring the style to you",
  ),
];
