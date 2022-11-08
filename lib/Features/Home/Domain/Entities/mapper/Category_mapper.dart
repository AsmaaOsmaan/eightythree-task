import 'package:task/Features/Home/Domain/Entities/category_model.dart';

import '../../../../../App/Resources/color_manager.dart';
import '../deal_model.dart';

class CategoryMapper {
  static CategoryModel fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'],
        name: json['name'],
        color: json['color'].toString().toColor());
  }

  static Map<String, dynamic> toJson(CategoryModel categoryModel) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = categoryModel.id;
    data['name'] = categoryModel.name;
    data['color'] = categoryModel.color ?? categoryModel.color!.toHex();

    return data;
  }
}
