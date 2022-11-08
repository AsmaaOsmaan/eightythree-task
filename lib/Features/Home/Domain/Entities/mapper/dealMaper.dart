import '../../../../../App/Resources/color_manager.dart';
import '../deal_model.dart';
class DealMapper{
  static DealModel fromJson(Map<String, dynamic> json) {
    return DealModel(

      id: json['id'],
      numberOfPieces: json['numberOfPieces'],
      name: json['name'],
      price: json['price'],
      oldPrice: json['oldPrice'],
      color: json['color'].toString().toColor(),
      isFavorite: json['isFavorite']


    );
  }

  static Map<String, dynamic> toJson(DealModel dealModel) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = dealModel.id;
    data['name'] = dealModel.name;
    data['price'] = dealModel.price;
    data['oldPrice'] = dealModel.oldPrice;
    data['numberOfPieces'] = dealModel.numberOfPieces;
    data['isFavorite'] = dealModel.isFavorite;
    data['color']=dealModel.color ??dealModel.color!.toHex();


    return data;
  }
}