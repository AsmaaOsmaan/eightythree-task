import 'dart:ui';

class DealModel {
  int id;
  String name;
  String price;
  String? oldPrice;
  int numberOfPieces;
  Color? color;
  bool? isFavorite;
  DealModel(
      {
        required this.id,
        required this.name,
      required this.price,
      required this.numberOfPieces,
      this.oldPrice,
        this.color,
        this.isFavorite,
      });
}
