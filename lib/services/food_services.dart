part of 'services.dart';

class FoodServices {
  static Future<ApiReturnValue<List<Food>>> getFoods() async {
    await Future.delayed(Duration(miliseconds:500));

    return ApiReturnValue(value: mockFoods);
  }

  
}