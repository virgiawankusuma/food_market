part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Virgiawan Teguh Kusuma',
    address: 'Kuwasen',
    city: 'Jepara',
    houseNumber: '1234',
    phoneNumber: '08123456789',
    email: 'virgiawan@gmail.com',
    picturePath:
        'https://pbs.twimg.com/profile_images/1397605207761035265/oyIYqc4__400x400.jpg');
