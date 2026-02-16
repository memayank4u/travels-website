import '../models/destination.dart';

final List<Destination> mockDestinations = [
  Destination(
    id: '1',
    name: 'Santorini',
    country: 'Greece',
    description:
        'Santorini is a volcanic island in the Cyclades group of the Greek islands. '
        'It is famous for its dramatic views, stunning sunsets from Oia, white-washed '
        'houses, and its very own active volcano. The island offers a unique blend of '
        'natural beauty, ancient history, and vibrant nightlife.',
    imageUrl: 'https://images.unsplash.com/photo-1613395877344-13d4a8e0d49e?w=800',
    rating: 4.8,
    reviewCount: 2341,
    pricePerNight: 185,
    tags: ['Beach', 'Romantic', 'Island', 'Sunset'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1613395877344-13d4a8e0d49e?w=800',
      'https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?w=800',
      'https://images.unsplash.com/photo-1601581875039-e899893d520c?w=800',
    ],
    reviews: [
      Review(userName: 'Alice M.', comment: 'Absolutely breathtaking views! The sunset from Oia is a must-see.', rating: 5.0, date: 'Jan 2026'),
      Review(userName: 'Carlos R.', comment: 'Beautiful island, great food. A bit crowded in summer though.', rating: 4.5, date: 'Dec 2025'),
      Review(userName: 'Yuki T.', comment: 'Perfect honeymoon destination. Loved every moment!', rating: 5.0, date: 'Nov 2025'),
    ],
  ),
  Destination(
    id: '2',
    name: 'Kyoto',
    country: 'Japan',
    description:
        'Kyoto, once the capital of Japan, is a city on the island of Honshu. '
        'It is famous for its numerous classical Buddhist temples, gardens, imperial palaces, '
        'Shinto shrines, and traditional wooden houses. Kyoto is also known for its formal '
        'traditions such as kaiseki dining and geisha entertainment.',
    imageUrl: 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=800',
    rating: 4.9,
    reviewCount: 3102,
    pricePerNight: 145,
    tags: ['Culture', 'Temples', 'Historic', 'Nature'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=800',
      'https://images.unsplash.com/photo-1545569341-9eb8b30979d9?w=800',
      'https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=800',
    ],
    reviews: [
      Review(userName: 'Emma S.', comment: 'The temples are incredible. Fushimi Inari is magical!', rating: 5.0, date: 'Feb 2026'),
      Review(userName: 'Raj P.', comment: 'Best cultural experience. The bamboo grove is stunning.', rating: 4.8, date: 'Jan 2026'),
    ],
  ),
  Destination(
    id: '3',
    name: 'Bali',
    country: 'Indonesia',
    description:
        'Bali is an Indonesian island known for its forested volcanic mountains, '
        'iconic rice paddies, beaches, and coral reefs. The island is home to religious sites '
        'such as cliffside Uluwatu Temple. Bali is also known for its yoga and meditation retreats.',
    imageUrl: 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=800',
    rating: 4.7,
    reviewCount: 4521,
    pricePerNight: 95,
    tags: ['Beach', 'Adventure', 'Wellness', 'Tropical'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=800',
      'https://images.unsplash.com/photo-1573790387438-4da905039392?w=800',
      'https://images.unsplash.com/photo-1555400038-63f5ba517a47?w=800',
    ],
    reviews: [
      Review(userName: 'Sophie L.', comment: 'Paradise on earth! Great value for money.', rating: 4.5, date: 'Jan 2026'),
      Review(userName: 'Mike D.', comment: 'Amazing surfing and the rice terraces are gorgeous.', rating: 5.0, date: 'Dec 2025'),
      Review(userName: 'Lina K.', comment: 'The yoga retreats here changed my life. So peaceful.', rating: 4.8, date: 'Nov 2025'),
    ],
  ),
  Destination(
    id: '4',
    name: 'Swiss Alps',
    country: 'Switzerland',
    description:
        'The Swiss Alps are a stunning mountain range offering world-class skiing, '
        'hiking, and breathtaking scenery. Charming villages like Zermatt and Interlaken '
        'provide cozy accommodations with panoramic mountain views.',
    imageUrl: 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?w=800',
    rating: 4.9,
    reviewCount: 1876,
    pricePerNight: 320,
    tags: ['Mountains', 'Skiing', 'Hiking', 'Luxury'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?w=800',
      'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800',
      'https://images.unsplash.com/photo-1491555103944-7c647fd857e6?w=800',
    ],
    reviews: [
      Review(userName: 'Hans W.', comment: 'Best skiing in the world. The Matterhorn view is unreal.', rating: 5.0, date: 'Feb 2026'),
      Review(userName: 'Olivia J.', comment: 'Expensive but worth every penny. Stunning scenery.', rating: 4.7, date: 'Jan 2026'),
    ],
  ),
  Destination(
    id: '5',
    name: 'Marrakech',
    country: 'Morocco',
    description:
        'Marrakech is a vibrant city in Morocco known for its bustling souks, '
        'stunning palaces, and lively Jemaa el-Fnaa square. The city blends traditional '
        'Berber culture with French colonial influences, offering a unique sensory experience.',
    imageUrl: 'https://images.unsplash.com/photo-1597212618440-806262de4f6b?w=800',
    rating: 4.5,
    reviewCount: 1543,
    pricePerNight: 75,
    tags: ['Culture', 'Markets', 'Historic', 'Desert'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1597212618440-806262de4f6b?w=800',
      'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?w=800',
      'https://images.unsplash.com/photo-1509114397022-ed747cca3f65?w=800',
    ],
    reviews: [
      Review(userName: 'Pierre D.', comment: 'The souks are incredible! So many colors and flavors.', rating: 4.5, date: 'Dec 2025'),
      Review(userName: 'Anna B.', comment: 'Loved the riads and the food. A magical city.', rating: 4.8, date: 'Nov 2025'),
    ],
  ),
  Destination(
    id: '6',
    name: 'Maldives',
    country: 'Maldives',
    description:
        'The Maldives is a tropical paradise in the Indian Ocean, known for its '
        'crystal-clear waters, overwater bungalows, and vibrant coral reefs. It is one of '
        'the most sought-after luxury beach destinations in the world.',
    imageUrl: 'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?w=800',
    rating: 4.9,
    reviewCount: 2890,
    pricePerNight: 450,
    tags: ['Beach', 'Luxury', 'Diving', 'Romantic'],
    galleryUrls: [
      'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?w=800',
      'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?w=800',
      'https://images.unsplash.com/photo-1590523277543-a94d2e4eb00b?w=800',
    ],
    reviews: [
      Review(userName: 'James H.', comment: 'The overwater villa was a dream come true!', rating: 5.0, date: 'Feb 2026'),
      Review(userName: 'Mei L.', comment: 'Best snorkeling ever. The water is unbelievably clear.', rating: 5.0, date: 'Jan 2026'),
    ],
  ),
];

final List<Trip> mockTrips = [
  Trip(
    destination: mockDestinations[0],
    checkIn: DateTime(2026, 3, 15),
    checkOut: DateTime(2026, 3, 20),
    guests: 2,
    totalPrice: 925,
  ),
  Trip(
    destination: mockDestinations[2],
    checkIn: DateTime(2026, 4, 10),
    checkOut: DateTime(2026, 4, 17),
    guests: 1,
    totalPrice: 665,
  ),
  Trip(
    destination: mockDestinations[4],
    checkIn: DateTime(2026, 5, 1),
    checkOut: DateTime(2026, 5, 4),
    guests: 3,
    totalPrice: 225,
  ),
];
