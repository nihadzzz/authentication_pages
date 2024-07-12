class IntroDatas {
   final String image;
   final String title;
   final String description;

  IntroDatas({
    required this.image,
    required this.title,
    required this.description,
  });

  static final List<IntroDatas> datas = [
    IntroDatas(
      image: 'assets/png/plan_your_trip.webp',
      title: 'Plan Your trip',
      description: 'Plan your trip,  Pick the best place for your holiday.',
    ),
    IntroDatas(
      image: 'assets/png/select_date.webp',
      title: 'Select the date',
      description: 'Plan your trip, choose destination. Pick the best place for your holiday.',
    ),
    IntroDatas(
      image: 'assets/png/enjoy_your_trip.webp',
      title: 'enjoy your trip',
      description: 'Planation. Pick the best place for your holiday.',
    )
  ];
}
