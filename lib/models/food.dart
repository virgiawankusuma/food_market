part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

Food mockFood = Food(
    id: 1,
    picturePath:
        'https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg',
    name: 'Sate Sayur Sultan',
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi asperiores nulla tenetur incidunt neque impedit ad iste, molestiae nisi consequuntur earum quibusdam natus quos quod rem odio, ea porro.',
    ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
    price: 150000,
    rate: 4.2);
