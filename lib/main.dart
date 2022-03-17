import 'package:flutter/material.dart';
import 'package:pringgosadventure/pages/home/cart_page.dart';
import 'package:pringgosadventure/pages/detail_chat_page.dart';
import 'package:pringgosadventure/pages/home/main_page.dart';
import 'package:pringgosadventure/pages/product_page.dart';
import 'package:pringgosadventure/pages/sign_in_page.dart';
import 'package:pringgosadventure/pages/sign_up_page.dart';
import 'package:pringgosadventure/pages/splash_page.dart';
import 'package:pringgosadventure/providers/auth_provider.dart';
import 'package:pringgosadventure/providers/product_provider.dart';
import 'package:pringgosadventure/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context)=> WishlistProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/cart': (context) => CartPage(),

        },
      ),
    );
  }
}
