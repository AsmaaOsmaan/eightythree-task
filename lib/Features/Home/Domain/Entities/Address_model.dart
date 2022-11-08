import 'package:flutter/cupertino.dart';

class AddressModel{
  int id;
  String? addressTitle;
  String? street;
  String? streetDetails;

  AddressModel({
   required this.id,
   this.addressTitle,
   this.street,
   this.streetDetails
});

}