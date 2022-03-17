import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pringgosadventure/pages/widgets/wishlist_cart.dart';
import 'package:pringgosadventure/providers/wishlist_provider.dart';
import 'package:pringgosadventure/theme.dart';
import 'package:provider/provider.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Favorite Shoes'),
      );
    }

    Widget emptyWishList() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Love_Icon.png',
                width: 74,
                height: 62,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                ' You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      )),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                  },
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
    Widget content(){
      return Expanded(
          child: Container(
            color: backgroundColor3,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              children: wishlistProvider.wishlist.map((product) => WishlistCart(product)).toList()
            ),

      )
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishList(),
       wishlistProvider.wishlist.length == 0 ? emptyWishList(): content()

      ],
    );
  }
}
