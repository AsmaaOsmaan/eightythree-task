import 'package:task/Features/Home/Domain/Entities/category_model.dart';

import '../../../../../App/Resources/color_manager.dart';
import '../Address_model.dart';
import '../deal_model.dart';

class AddressMapper {
  static AddressModel fromJson(Map<String, dynamic> json) {
    return AddressModel(

        id: json['id'],
        addressTitle: json['addressTitle'],
        street: json['street'],
      streetDetails: json['streetDetails']
    );


  }

  static Map<String, dynamic> toJson(AddressModel addressModel) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = addressModel.id;
    data['addressTitle'] = addressModel.addressTitle;
    data['street'] = addressModel.street;
    data['streetDetails'] = addressModel.streetDetails;

    return data;
  }
}
