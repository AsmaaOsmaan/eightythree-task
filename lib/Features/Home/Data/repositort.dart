import 'package:task/Features/Home/Domain/Entities/Address_model.dart';
import 'package:task/Features/Home/Domain/Entities/category_model.dart';
import 'package:task/Features/Home/Domain/Entities/deal_model.dart';
import 'package:task/Features/Home/Domain/Entities/mapper/Address_maper.dart';
import 'package:task/Features/Home/Domain/Entities/mapper/Category_mapper.dart';

import '../Domain/Entities/mapper/dealMaper.dart';
import 'mock_json.dart';

class RepoHome{

  List<Map<String, dynamic>> convertToListJson(response) {
    return List<Map<String, dynamic>>.from((response));
  }

  Map<String, dynamic> convertToJson(response) {
    return Map<String, dynamic>.from(response);
  }


  List<DealModel> convertToListModel(List<Map<String, dynamic>> jsonResponse) {
    return jsonResponse.map((e) => DealMapper.fromJson(e)).toList();
  }
  List<AddressModel> convertToListModelAddress(List<Map<String, dynamic>> jsonResponse) {
    return jsonResponse.map((e) => AddressMapper.fromJson(e)).toList();
  }
  List<CategoryModel> convertToListModelCategory(List<Map<String, dynamic>> jsonResponse) {
    return jsonResponse.map((e) => CategoryMapper.fromJson(e)).toList();
  }

  List<DealModel> getDeals()  {
    final response = Deals['deals'];
    final jsonResponse = convertToListJson(response);
    final deals = convertToListModel(jsonResponse);
    return deals;
  }

  List<AddressModel> getAddress()  {
    final response = Addresses['addresses'];
    final jsonResponse = convertToListJson(response);
    final address = convertToListModelAddress(jsonResponse);
    return address;
  }

  List<CategoryModel> getCategories()  {
    final response = categories['categories'];
    final jsonResponse = convertToListJson(response);
    final category = convertToListModelCategory(jsonResponse);
    return category;
  }
}