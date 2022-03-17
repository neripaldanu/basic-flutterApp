import 'package:flutter/material.dart';
import 'package:pringgosadventure/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('assets/sepatu_tranning.png'))),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terrex Urban Low',
                    style: primaryTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$143,98',
                    style: priceTextStyle,
                  )
                ],
              )),
              Column(
                children: [
                  Image.asset('assets/button_add.png', width: 16,),
                  SizedBox(height: 2,),
                  Text('2', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),),
                  SizedBox(height: 2,),
                  Image.asset('assets/button_min.png', width: 16,)
                ],
              )
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Image.asset('assets/button_remove.png', width: 10, height: 12,),
              SizedBox(width: 4,),
              Text('Remove', style: alertTextStyle.copyWith(fontWeight: light, fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}
