import 'package:flutter/material.dart';
import 'package:pringgosadventure/pages/widgets/product_card.dart';
import 'package:pringgosadventure/pages/widgets/product_tile.dart';

import '../../theme.dart';

Widget header() {
  return Container(
    margin: EdgeInsets.only(
        top: defaultMargin, left: defaultMargin, right: defaultMargin),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo Neri Paldanu',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              Text(
                '@Dpaldanu',
                style: subtitleTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              )),
        )
      ],
    ),
  );
}
Widget categories() {
  return Container(
    margin: EdgeInsets.only(top: defaultMargin),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultMargin,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primaryColor,
            ),
            child: Text(
              'Semua Produk',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'Tenda',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'Sleeping Bag',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'Sepatu',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'Jaket',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'Hammock',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: subtitleColor,
              ),
              color: transparentColor,
            ),
            child: Text(
              'T-Shit',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget popularProductTitle(){
  return Container(
    margin: EdgeInsets.only(
      top: defaultMargin,
      left: defaultMargin,
      right: defaultMargin,
    ),
    child: Text(
      'Popular Products',
      style: primaryTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semiBold,
      ),
    ),
  );
}

Widget popularProduct(){
  return Container(
    margin: EdgeInsets.only(
      top: 14,
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultMargin,
          ),
          Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),

            ],
          )
        ],
      ),
    ),
  );
}

Widget newArrivalsTitle(){
  return Container(
    margin: EdgeInsets.only(
      top: defaultMargin,
      left: defaultMargin,
      right: defaultMargin,
    ),
    child: Text(
      'New Arrivals',
      style: primaryTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semiBold,
      ),
    ),
  );

}

Widget newArrivals(){
  return Container(
    margin: EdgeInsets.only(
      top: 14,
    ),
    child: Column(
      children: [
        ProductTile(),
        ProductTile(),
        ProductTile(),
        ProductTile(),
        ProductTile(),
        ProductTile(),

      ],
    ),
  );
}