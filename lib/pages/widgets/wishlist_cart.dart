import 'package:flutter/material.dart';
import 'package:pringgosadventure/theme.dart';


class WishlistCart extends StatelessWidget {
  const WishlistCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
            color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/sepatu_tranning.png",
            width: 60,),
          ),
          SizedBox(width: 12,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Terrex Urban Low',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 14
              ),),
              Text('\$143,98', style: priceTextStyle,)
            ],
          ),),
          Image.asset('assets/Love_Icon.png', width: 30,)
        ],
      ),
    );
  }
}
