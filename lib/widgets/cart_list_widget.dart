import 'package:flutter/material.dart';
import 'package:pharmacy_app_v2/widgets/item_card_widget.dart';

import '../data/data.dart';

class CartListWidget extends StatefulWidget {
  const CartListWidget({super.key});

  @override
  State<CartListWidget> createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartListWidget> {
  var data = Cart_Dummy_Data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), //makes the listview.builder scrollable with the page
      shrinkWrap:true, //needed when physics is set to AlwaysScrollableScrollPhysics which is the opposite of what we have here

      itemCount: data.length,
      itemBuilder: (context, index) {
        return ItemCardWidget(data: data[index]);
      },
    );
  }
}
