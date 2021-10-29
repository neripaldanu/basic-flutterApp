

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pringgosadventure/pages/widgets/chat_bubble.dart';
import 'package:pringgosadventure/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget productPriview() {
      return Container(
        height: 74,
        width: 225,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: backgroundColor5,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: primaryColor,
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/shoes_review.png',
                width: 54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISIO...',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/icon_button_close.png',
            width: 22,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPriview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...',
                            hintStyle: subtitleTextStyle,
                          ),
                        ),
                      )),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/Send-Button.png',
                  width: 45,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(text: 'Hi, This item is still available?', isSender: true, hasProduct: true,),
          ChatBubble(text: 'Good night, This item is only available in size 42 and 43',isSender: false, hasProduct: false,),
          ChatBubble(text: 'Owww, it suits me very well', isSender: true, hasProduct: false,)

        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/image_logo_shop_online.png',
                  width: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
