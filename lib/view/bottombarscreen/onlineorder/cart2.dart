import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/res/components/general_exception.dart';
import 'package:the29029restaurant/res/components/internet_exceptions_widget.dart';
import 'package:the29029restaurant/view/animation_screen.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/checkout.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/details.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/itemsforstarters.dart';
import 'package:the29029restaurant/view/bottombarscreen/onlineorder/onlinelocation.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
import 'package:http/http.dart' as http;
import '../../login.dart';
import 'card.dart';
RxList newListOfMaps = [].obs;

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  double subtotal = 0.0;
  double shippingcost = 0.0;
  double total = 0.0;

  var tap = 0;
  var count = 0;
  var result = 0;
  RxInt quantity = 0.obs;

  int length = 3;
  RxMap data = {}.obs;

  remove() {
    length--;
  }

  void initState() {
    print(iconcount.value.toString());

    fetchCartItems();
    super.initState();
  }

  @override
  void dispose() {
    fetchCartItemCount();

    super.dispose();
  }

  String? name;
  String? title;
  String? price;
  String? image;
  RxList items = [].obs;
  getValue(List x) {
    setState(() {
      items.value = x;

    });
    print(items);
  }

  RxBool updatenull = false.obs;

  Updatadatanull() {
    Future.delayed(Duration(seconds: 5), () {
      if (items.isEmpty) {
        updatenull.value = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
            // Get.to(() => Detalis());
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Cart",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Obx(() {
              Updatadatanull();
              return items.isEmpty
                  ? (!updatenull.value
                      ? Container(
                          alignment: Alignment.center,
                          height: Get.height,
                          width: Get.width,
                          child: CircularProgressIndicator(),
                        )
                      : Container(
                          alignment: Alignment.center,
                          height: Get.height,
                          width: Get.width,
                          child: Text(
                            "No item add\nplease add the item",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                          )))
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.03),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              items.value.length, // Number of items in the list
                          itemBuilder: (BuildContext context, int index) {
                            // Return a container for each item
                            return Container(
                              height: Get.height * 0.14,
                              // width: Get.width,
                              margin: EdgeInsets.only(bottom: height * 0.06),
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    items[index]['featured_image'] ?? CupertinoActivityIndicator(),
                                    //"assets/images/detail.png",
                                    height: 60,
                                  ),
                                  // SizedBox(width: width * 0.03),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // color: Colors.yellow,
                                        width: width - 100,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: width - 150,
                                              child: Text(
                                                items[index]['name'],
                                                // "Piyaza Chicken",
                                                softWrap: true,
                                                maxLines: 2,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                var del =
                                                    items[index]['item_key'];
                                                fetchCartItemCount();
                                                items.removeAt(index);
                                                setState(() {});
                                                deleteCartItem(del);
                                              },
                                              child: Image.asset(
                                                  "assets/images/delete.png"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Text(
                                        items[index]['title'],
                                        //"Strips of Corn Fed Chicken breast...",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xff8C8A9D)),
                                      ),
                                      SizedBox(height: height * 0.015),
                                      Container(
                                        width: width - 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                text: "£",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                        color:
                                                            Color(0xff911FDA),
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                              TextSpan(
                                                text: items[index]['totals']
                                                    ['total'].toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                        color:
                                                            Color(0xff911FDA),
                                                        fontWeight:
                                                            FontWeight.w600),
                                              )
                                            ])),
                                            SizedBox(width: width * 0.38),
                                            InkWell(
                                              onTap: () {
                                                if (items[index]['quantity']
                                                            ['value'] -
                                                        1 >=
                                                    1) {
                                                  items[index]['quantity']
                                                      ['value']--;
                                                  setState(() {});
                                                }
                                                fetchCartItemCount();
                                                print("object");
                                                int x = items[index]['quantity']
                                                    ['value'];
                                                int modify = x - 1;

                                                if ((modify >= 0)) {
                                                  // x= x + modify;
                                                  updateCartItemQuantity(
                                                      items[index]['item_key'],
                                                      modify);
                                                }
                                              },
                                              child: Container(
                                                child: tap == 1
                                                    ? Icon(Icons.remove_circle,
                                                        color:
                                                            Color(0xff41004c))
                                                    : Icon(Icons
                                                        .remove_circle_outline),
                                              ),
                                            ),
                                            Container(
                                              child: quantity.value < 10
                                                  ? Text(
                                                      "${items[index]['quantity']['value']}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleLarge
                                                          ?.copyWith(
                                                              color: Color(
                                                                  0xff000000),
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    )
                                                  : Text(
                                                      "${items[index]['quantity']['value']}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleLarge
                                                          ?.copyWith(
                                                              color: Color(
                                                                  0xff000000),
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  items[index]['quantity']
                                                      ['value']++;
                                                  setState(() {});
                                                  fetchCartItemCount();
                                                  var x = items[index]
                                                      ['quantity']['value'];
                                                  var modify = 0;
                                                  modify = modify + 1;
                                                  x = x + modify;
                                                  updateCartItemQuantity(
                                                      items[index]['item_key'],
                                                      x);
                                                },
                                                child: Container(
                                                    child: tap == 2
                                                        ? Icon(Icons.add_circle,
                                                            color: Color(
                                                                0xff41004c))
                                                        : Icon(
                                                            Icons
                                                                .add_circle_outline,
                                                          ))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Text(
                          "Order Info",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                  color: Color(0xff323643),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub Total",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8C8A9D)),
                            ),
                            Text(
                              "£${subtotal.toStringAsFixed(2)}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping Cost",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8C8A9D)),
                            ),
                            Text(
                              "£$shippingcost",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              "£${total.toStringAsFixed(2)}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Color(0xff911FDA),
                                      fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.05),
                        Center(
                          child: MyButton(
                              title: "Update Cart",
                              bgColor: Color(0xff41004C),
                              side: BorderSide(color: Color(0xff41004C)),
                              onTap: () {
                                Get.back();
                                Get.to(() => Card2());
                              },
                              height: height * .07,
                              width: width * 0.5),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Center(
                          child: MyButton(
                              title: "Place Order",
                              bgColor: Color(0xff41004C),
                              side: BorderSide(color: Color(0xff41004C)),
                              onTap: () {
                                totalPrice.value=double.parse(total.toString());
                                Get.to(()=> onlinelocation());
                                //Get.to(()=>  Check_Out());
                              },
                              height: height * .07,
                              width: width * 0.5),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        )
                      ],
                    );
            })),
      ),
    );
  }

  //screen dekhne ki api
  Future<void> fetchCartItems() async {
    final String url =
        'https://www.the29029restaurant.com/wp-json/myplugin/v1/cart_product';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'user_id': atloginuserid.toString(),
      'Cookie':
          'service_date=2023-08-22; woocommerce_cart_hash=b9b7379545bb1b3ac5e191368eca9b6f; woocommerce_items_in_cart=1; wp_cocart_session_78909a3cd8e3a8e30c136df187a801eb=ab28923678b64a52570a9f414cd93a34%7C%7C1693301266%7C%7C1693214866%7C%7C90801e584083b1cb1db67fabf95847a1',
    };
    final Map<String, String> body = {
      // 'Content-Type': 'application/json',
      'username': userEmailsp!,
      'password': passwordsp!,

      // 'Cookie': 'service_date=2023-08-22; woocommerce_cart_hash=b9b7379545bb1b3ac5e191368eca9b6f; woocommerce_items_in_cart=1; wp_cocart_session_78909a3cd8e3a8e30c136df187a801eb=ab28923678b64a52570a9f414cd93a34%7C%7C1693301266%7C%7C1693214866%7C%7C90801e584083b1cb1db67fabf95847a1',
    };
    final http.Response response = await http.post(Uri.parse(url),
        // headers: headers,
        body: body);

    if (response.statusCode == 200) {
      print('api success');
      print(response.body);

      var x = jsonDecode(response.body);

      for (var item in x) {
        int productId = item["id"];
        int quantity = item["quantity"]["value"];
        Map<String, dynamic> newMap = {"product_id": productId, "quantity": quantity};
        newListOfMaps.value.add(newMap);
      }
      print("******************* prinitng nnewwwww listtettetetetetete*********************");
      print(newListOfMaps);

      // data.value=x;
      // data.value[]
      getValue(x);
      print(x);
      print("hbdjhsbjdshndjshndsndsdnsjdnd");
      print(x[0]);
      for (int index = 0; index < x.length; index++) {
        subtotal += items[index]['totals']['total'];
        shippingcost +=
            double.parse(items[index]['totals']['tax'].toString());
      }
      total += (subtotal + shippingcost);

      print('$subtotal , $shippingcost,$total');

      // List<Map<String, dynamic>> cartItems = [];

      // print(responseData);
    } else {
      print('Failed to fetch cart items. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }


  void deleteCartItem(String key) async {
    String username = userEmailsp!;
    String password = passwordsp!;
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    print(basicAuth);
    final url =
        'https://www.the29029restaurant.com/wp-json/cocart/v2/cart/item/$key';
    // final Map<String, String> headers = {
    //   // 'Cookie': 'service_date=2023-08-11; woocommerce_cart_hash=2af8bac0c0d60223701c3bfc7d6fa480; woocommerce_items_in_cart=1; wp_cocart_session_78909a3cd8e3a8e30c136df187a801eb=ab28923678b64a52570a9f414cd93a34%7C%7C1692333597%7C%7C1692247197%7C%7C6514497bd897759512424ad1dcb438f5; woocommerce_cart_hash=1d629c0421e9ca4d6d2a0133ccd7663f; wp_cocart_session_78909a3cd8e3a8e30c136df187a801eb=ab28923678b64a52570a9f414cd93a34%7C%7C1693293926%7C%7C1693207526%7C%7C81d3d8d6d0eee2320b12d900b519d16d',
    //  // 'user_id': atloginuserid.toString(),
    // };
    final headers = {
      'Authorization': basicAuth,
      // 'Cookie': 'service_date=2023-08-18; ...', // Add your full Cookie header here
    };

    final response = await http.delete(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      data.value = {};
      // fetchCartDetails();
      // Handle successful deletion here
      // Get.back();
      // Get.to(()=>Card2());
      print('Item deleted successfully');
    } else {
      print('Failed to delete item: ${response.statusCode}');
    }
  }

  Future<void> updateCartItemQuantity(String key, var quantity) async {
    print(quantity);
    final String url =
        'https://www.the29029restaurant.com/wp-json/cocart/v2/cart/item/$key';

    String username = userEmailsp!;
    String password = passwordsp!;
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    print(basicAuth);
    final headers = {
      'Authorization': basicAuth,
      'Content-Type': 'application/json'
      // 'Cookie': 'service_date=2023-08-18; ...', // Add your full Cookie header here
    };

    final Map<String, dynamic> data = {
      "quantity": quantity.toString(),
    };

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      print(
          "updateeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
      // Get.back();
      // Get.to(()=>Card2());
      print('Item quantity updated successfully.');
    } else {
      print(
          'Failed to update item quantity. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }
}
