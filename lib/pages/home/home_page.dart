import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pringgosadventure/pages/home/widgets.dart';
import 'package:pringgosadventure/pages/widgets/product_card.dart';
import 'package:pringgosadventure/pages/widgets/product_tile.dart';
import 'package:pringgosadventure/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
