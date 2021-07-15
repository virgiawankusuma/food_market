part of 'services.dart';

class TransactionServices {
  static Future<ApiReturnValue<List<Transaction>>> getTransaction() async {
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(value: mockTransaction);
  }

  static Future<ApiReturnValue<Transiction>> submitTransiction(Transiction transiction) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(value: transaction.copyWith(id:123, status: Transaction.pending));
  }
}