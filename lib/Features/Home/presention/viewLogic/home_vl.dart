import 'package:get/get.dart';
import 'package:task/Features/Home/Domain/Entities/Address_model.dart';
import 'package:task/Features/Home/Domain/Entities/category_model.dart';

import '../../Data/repositort.dart';
import '../../Domain/Entities/deal_model.dart';

class HomeViewLogic extends GetxController {
  RepoHome repoHome=RepoHome();

init(){

}
  @override
  void onInit() {
    super.onInit();
    getDeals();
    getCategories();
    getAddress();
  }
  List<DealModel>deals=[];
  List<CategoryModel>categories=[];
  List<AddressModel>address=[];
  getDeals(){
    deals=repoHome.getDeals();
    update();

  }


  getCategories(){
    categories=repoHome.getCategories();
    update();

  }
  getAddress(){
    address=repoHome.getAddress();
    update();

  }
    addTOFavorite (DealModel deal){
    deals.where((element) => element.id==deal.id);
    //foods.firstWhere((element) => element.id == searchedId) = food;
    deals.firstWhere((element) => element.id == deal.id).isFavorite = !(deal.isFavorite)!;
    update();


    }





}
