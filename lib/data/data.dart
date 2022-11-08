import 'package:flutter/material.dart';

import '../models/cartItemModel.dart';



const Cart_Dummy_Data = [
  CartItem(
      id: 'c1',
      productTitle: 'Panadol Extra Strength',
      productImage: "assets/images/panadol.webp",
      productPrice: 560,
      quantity: 1
      ),
  CartItem(
      id: 'c2',
      productTitle: 'Sickle Cell Parell',
      productImage: "https://www.allcarepharmacy.ie/media/catalog/product/cache/30ef0a5a34180d98365b16f59a39bc5a/o/t/otc_-_470_x_470_22__1.png",
      productPrice: 560,
      quantity: 1
      ),
  // CartItem(
  //     id: 'c3',
  //     productTitle: 'Panadol Extra Strength',
  //     productImage: "https://www.allcarepharmacy.ie/media/catalog/product/cache/30ef0a5a34180d98365b16f59a39bc5a/o/t/otc_-_470_x_470_22__1.png",
  //     productPrice: 560,
  //     quantity: 1
  //     ),
  // CartItem(
  //     id: 'c3',
  //     productTitle: 'Panadol Extra Strength',
  //     productImage: "https://www.allcarepharmacy.ie/media/catalog/product/cache/30ef0a5a34180d98365b16f59a39bc5a/o/t/otc_-_470_x_470_22__1.png",
  //     productPrice: 560,
  //     quantity: 1
  //     ),
];


//Calculations for Cart 


  var total;
  var GCT;
  var grandTotal;
  var itemsInCart;
  var quan;



  int addQuan(int quan) {
      quan += 1;
      return quan;
  }

  // double minusQuan() {
  //     quantity = Cart_Dummy_Data.cartItem;
  //     quantity -= 1;
  //     return quantity;
  // }


int itemCount() {
  itemsInCart = Cart_Dummy_Data.length;
  return itemsInCart;
}


  double totalAmount () {
    total = 0.0;
    Cart_Dummy_Data.forEach((cartItem) {
      total += cartItem.productPrice * cartItem.quantity;
    });
    return total;
  }

  double taxAmount() {
    GCT = 0.0;
    GCT = total * 0.15;
    return GCT;
  }

  double grandTotals() {
    grandTotal = total - GCT;
    return grandTotal;
  }

//removing an item from the list
  void removeItem(String productId) {
    Cart_Dummy_Data.remove(productId);

  }

  // void clearCart() {
  //  Cart_Dummy_Data = [];
  // }

