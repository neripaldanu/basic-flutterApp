import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pringgosadventure/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
          width: 215,
          height: 278,
          margin: EdgeInsets.only(
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffECEDEF),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/image_tenda_1-removebg-preview.png',
                width: 215,
                height: 150,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tenda',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Eiger 3238 Riding Explorer Beta',
                      style: blackColorStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Rp. 500.000',
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
