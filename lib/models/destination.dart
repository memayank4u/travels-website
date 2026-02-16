class Destination {
  final String id;
  final String name;
  final String country;
  final String description;
  final String imageUrl;
  final double rating;
  final int reviewCount;
  final double pricePerNight;
  final List<String> tags;
  final List<String> galleryUrls;
  final List<Review> reviews;

  const Destination({
    required this.id,
    required this.name,
    required this.country,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.pricePerNight,
    required this.tags,
    this.galleryUrls = const [],
    this.reviews = const [],
  });
}

class Review {
  final String userName;
  final String comment;
  final double rating;
  final String date;

  const Review({
    required this.userName,
    required this.comment,
    required this.rating,
    required this.date,
  });
}

class Trip {
  final Destination destination;
  final DateTime checkIn;
  final DateTime checkOut;
  final int guests;
  final double totalPrice;

  const Trip({
    required this.destination,
    required this.checkIn,
    required this.checkOut,
    required this.guests,
    required this.totalPrice,
  });

  int get nights => checkOut.difference(checkIn).inDays;
}
