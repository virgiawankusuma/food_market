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
      [id, name, email, address, houseNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Virgiawan',
    email: 'virgiawan@gmail.com',
    address: 'Kuwasen',
    city: 'Jepara',
    houseNumber: '1234',
    phoneNumber: '08123456789',
    picturePath:
        'https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-19/s320x320/198834143_188054936555495_3379298835382881714_n.jpg?tp=1&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=X-uKCP0IStYAX9gaxCO&edm=ABfd0MgBAAAA&ccb=7-4&oh=0efd6b25926e3d0eaecbfea157398178&oe=60DF989F&_nc_sid=7bff83');
