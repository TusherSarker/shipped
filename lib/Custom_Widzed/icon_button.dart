import 'package:flutter/material.dart';
class IconBtnWithClick extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.symmetric(),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
                shape: BoxShape.circle),
            child: Icon(
              Icons.shopping_cart,
              size: 35,
              color: Color(0xFF686868),
            ),
          ),
        ],
      ),
    );
  }
}
