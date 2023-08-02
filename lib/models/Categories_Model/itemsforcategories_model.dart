// // class ItemforcategoriesModel {
// //   ItemforcategoriesModel({
// //      this.categoryTitle,
// //      this.partyMainMenuDetails,
// //   });
// //     String ?categoryTitle;
// //     List<PartyMainMenuDetails> ?partyMainMenuDetails;
// //
// //   ItemforcategoriesModel.fromJson(Map<String, dynamic> json){
// //     categoryTitle = json['category_title'];
// //     partyMainMenuDetails = List.from(json['party_main_menu_details']).map((e)=>PartyMainMenuDetails.fromJson(e)).toList();
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final _data = <String, dynamic>{};
// //     _data['category_title'] = categoryTitle;
// //     _data['party_main_menu_details'] = partyMainMenuDetails!.map((e)=>e.toJson()).toList();
// //     return _data;
// //   }
// // }
// //
// // class PartyMainMenuDetails {
// //   PartyMainMenuDetails({
// //      this.productId,
// //      this.productImg,
// //      this.menuTitle,
// //      this.productSlug,
// //      this.menuDiscription,
// //      this.productPrice,
// //   });
// //     int ?productId;
// //     String ?productImg;
// //     String ?menuTitle;
// //     String ?productSlug;
// //     String ?menuDiscription;
// //     String ?productPrice;
// //
// //   PartyMainMenuDetails.fromJson(Map<String, dynamic> json){
// //     productId = json['product_id'];
// //     productImg = json['product_img'];
// //     menuTitle = json['menu_title'];
// //     productSlug = json['product_slug'];
// //     menuDiscription = json['menu_discription'];
// //     productPrice = json['product_price'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     final _data = <String, dynamic>{};
// //     _data['product_id'] = productId;
// //     _data['product_img'] = productImg;
// //     _data['menu_title'] = menuTitle;
// //     _data['product_slug'] = productSlug;
// //     _data['menu_discription'] = menuDiscription;
// //     _data['product_price'] = productPrice;
// //     return _data;
// //   }
// // }
//
// class ItemforcategoriesModel {
//   ItemforcategoriesModel({
//      this.categoryTitle,
//      this.productDetails,
//   });
//     String ?categoryTitle;
//     List<ProductDetails> ?productDetails;
//
//   ItemforcategoriesModel.fromJson(Map<String, dynamic> json){
//     categoryTitle = json['category_title'];
//     productDetails = List.from(json['product_details']).map((e)=>ProductDetails.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['category_title'] = categoryTitle;
//     _data['product_details'] = productDetails!.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }
//
// class ProductDetails {
//   ProductDetails({
//      this.productId,
//      this.productImg,
//      this.menuTitle,
//      this.productSlug,
//      this.menuDiscription,
//      this.productPrice,
//   });
//     int ?productId;
//     String ?productImg;
//     String ?menuTitle;
//     String ?productSlug;
//     String ?menuDiscription;
//     String ?productPrice;
//
//   ProductDetails.fromJson(Map<String, dynamic> json){
//     productId = json['product_id'];
//     productImg = json['product_img'];
//     menuTitle = json['menu_title'];
//     productSlug = json['product_slug'];
//     menuDiscription = json['menu_discription'];
//     productPrice = json['product_price'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['product_id'] = productId;
//     _data['product_img'] = productImg;
//     _data['menu_title'] = menuTitle;
//     _data['product_slug'] = productSlug;
//     _data['menu_discription'] = menuDiscription;
//     _data['product_price'] = productPrice;
//     return _data;
//   }
// }

class ItemforcategoriesModel {
  ItemforcategoriesModel({
     this.categoryTitle,
     this.productDetails,
  });
    String ?categoryTitle;
    List<ProductDetails> ?productDetails;

  ItemforcategoriesModel.fromJson(Map<String, dynamic> json){
    categoryTitle = json['category_title'];
    productDetails = List.from(json['product_details']).map((e)=>ProductDetails.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category_title'] = categoryTitle;
    _data['product_details'] = productDetails!.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class ProductDetails {
  ProductDetails({
     this.productId,
     this.productImg,
     this.productTitle,
     this.productSlug,
     this.productDiscription,
     this.productPrice,
  });
    int ?productId;
    String ?productImg;
    String ?productTitle;
    String ?productSlug;
    String ?productDiscription;
    String ?productPrice;

  ProductDetails.fromJson(Map<String, dynamic> json){
    productId = json['product_id'];
    productImg = json['product_img'];
    productTitle = json['product_title'];
    productSlug = json['product_slug'];
    productDiscription = json['product_discription'];
    productPrice = json['product_price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['product_id'] = productId;
    _data['product_img'] = productImg;
    _data['product_title'] = productTitle;
    _data['product_slug'] = productSlug;
    _data['product_discription'] = productDiscription;
    _data['product_price'] = productPrice;
    return _data;
  }
}