part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.type = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          'https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg',
      name: 'Sate Sayur Sultan',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
      ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          'https://asset.kompas.com/crops/TW12r4uGupAm5Ve1ukEbGxlHvq8=/0x1:1404x936/780x390/data/photo/2019/12/28/5e06e5e617700.jpg',
      name: 'Steak Daging Sapi Korea',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
      ingredients: 'Daging Sapi Korea, Garam, Lada Hitam',
      price: 750000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath:
          'https://i1.wp.com/varminz.com/wp-content/uploads/2019/12/mexican-chopped-salad3.jpg?resize=1536%2C1536&ssl=1',
      name: 'Mexican Chopped ',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
      ingredients: 'Jagung, Selada, Tomat Ceri, Keju, Wortel',
      price: 105900,
      rate: 3.9,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          'https://selerasa.com/wp-content/uploads/2015/11/images_sayuran_Resep-sup-wortel-dan-kentang.jpg',
      name: 'Sup Wortel Pedas',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
      ingredients: 'Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula',
      price: 60000,
      rate: 4.9,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          'https://www.localguidesconnect.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=v2&px=999',
      name: 'Korean Raw Beef Tartare',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
      ingredients: 'Daging Sapi Korea, Telur, Biji Wijen',
      price: 350000,
      rate: 3.4),
];
