import 'package:flutter/material.dart';

class CartItem {
final dynamic id;
final String productTitle;
final String productImage;
final int quantity;
final double productPrice;

const CartItem({
  required this.id,
  required this.productTitle,
  required this.productImage,
  required this.quantity,
  required this.productPrice
});
}