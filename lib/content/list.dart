class User {
  final int id;
  final String nama;
  final String image;
  final bool status;

  User({
    required this.id,
    required this.nama,
    required this.image,
    required this.status,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  nama: 'Aruga',
  image: 'https://picsum.photos/id/52/200/300',
  status: true,
);

// USERS
final User yudish = User(
  id: 1,
  nama: 'Yudish',
  image: "https://picsum.photos/id/56/200/300",
  status: true,
);
final User michael = User(
  id: 2,
  nama: 'Michael',
  image: "https://picsum.photos/id/50/200/300",
  status: true,
);
final User fernandy = User(
  id: 3,
  nama: 'Fernandy',
  image: "https://picsum.photos/id/500/200/300",
  status: false,
);
final User citra = User(
  id: 4,
  nama: 'Citra',
  image: "https://picsum.photos/id/152/200/300",
  status: false,
);
final User anya = User(
  id: 5,
  nama: 'Anya',
  image: "https://picsum.photos/id/52/200/300",
  status: true,
);
final User gerard = User(
  id: 6,
  nama: 'Gerard',
  image: "https://picsum.photos/id/22/200/300",
  status: false,
);
final User rangga = User(
  id: 7,
  nama: 'Rangga',
  image: "https://picsum.photos/id/42/200/300",
  status: false,
);
final User dewi = User(
  id: 8,
  nama: 'Dewi',
  image: "https://picsum.photos/id/52/200/300",
  status: false,
);