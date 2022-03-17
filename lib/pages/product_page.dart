import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pringgosadventure/models/product_model.dart';
import 'package:pringgosadventure/providers/wishlist_provider.dart';
import 'package:pringgosadventure/theme.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  final ProductModel product;

  ProductPage(this.product);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/sepatu_tranning.png',
    'assets/sepatu_tranning.png',
    'assets/sepatu_tranning.png'
  ];
  List familiarShoes = [
    'assets/familiar_shoes1.png',
    'assets/familiar_shoes2.png',
    'assets/familiar_shoes3.png',
    'assets/familiar_shoes4.png',
    'assets/familiar_shoes5.png',
    'assets/familiar_shoes6.png',
    'assets/familiar_shoes7.png',
    'assets/familiar_shoes8.png',
    'assets/familiar_shoes9.png',
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {

    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);


    Future<void> showSuccessDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => Container(
                width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: AlertDialog(
                  backgroundColor: backgroundColor3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                  color: primaryTextColor,
                                ))),
                        Image.asset(
                          'assets/icon_success.png',
                          width: 100,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Hurray :)',
                          style: primaryTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Item added successfully",
                          style: secondaryTextStyle,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 154,
                          height: 44,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cart');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'View My Cart',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: medium, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ));
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              right: defaultMargin,
              left: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left)),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                )
              ],
            ),
          ),
          CarouselSlider(
            items: widget.product.galleries
                .map((image) => Image.network(
                      image.url,
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.product.galleries.map((e) {
                index++;
                return indicator(index);
              }).toList())
        ],
      );
    }

    Widget familiarShoesCard(imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imageUrl),
            )),
      );
    }

    Widget content() {
      int index = 0;
      return Container(
          margin: EdgeInsets.only(top: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24),
            ),
            color: backgroundColor1,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: defaultMargin,
                    right: defaultMargin,
                    left: defaultMargin),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
                            style: primaryTextStyle.copyWith(
                                fontWeight: semiBold, fontSize: 18),
                          ),
                          Text(
                            widget.product.category.name,
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: reguler),
                          )
                        ],
                      ),
                    )),
                    GestureDetector(
                      onTap: () {
                        wishlistProvider.setProduct(widget.product);
                        if (wishlistProvider.isWishlist(widget.product)) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              backgroundColor: secondaryColor,
                              content: Text(
                                'Has been added to the WishList',
                                textAlign: TextAlign.center,
                              )));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              backgroundColor: alertColor,
                              content: Text(
                                'Has been removed from the Whitelist',
                                textAlign: TextAlign.center,
                              )));
                        }
                      },
                      child: Image.asset(
                        wishlistProvider.isWishlist(widget.product)
                            ? 'assets/button_wishlist_blue.png'
                            : 'assets/button_wishlist.png',
                        width: 46,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: 20, right: defaultMargin, left: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: backgroundColor2,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price starts from',
                      style: primaryTextStyle,
                    ),
                    Text(
                      '\$${widget.product.price}',
                      style: priceTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    )
                  ],
                ),
              ),

              //Note: Description
              Container(
                margin: EdgeInsets.only(
                    top: defaultMargin,
                    right: defaultMargin,
                    left: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      widget.product.description,
                      style: subtitleTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),

              //Note: Familiar Shoes
              Container(
                margin: EdgeInsets.only(top: defaultMargin),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Text(
                        'Fimiliar Shoes',
                        style: primaryTextStyle.copyWith(
                            fontWeight: medium, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: familiarShoes.map((image) {
                          index++;
                          return Container(
                              margin: EdgeInsets.only(
                                  left: index == 0 ? defaultMargin : 0),
                              child: familiarShoesCard(image));
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),

              //Note: Buttons
              Container(
                margin: EdgeInsets.all(defaultMargin),
                width: double.infinity,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail-chat');
                      },
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Button_Chat.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 54,
                        child: TextButton(
                          onPressed: () {
                            showSuccessDialog();
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: primaryColor),
                          child: Text(
                            'Add To Cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ));
    }

    return Scaffold(
        backgroundColor: backgroundColor6,
        body: ListView(
          children: [
            header(),
            content(),
          ],
        ));
  }
}
