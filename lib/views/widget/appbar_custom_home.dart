import 'package:flutter/material.dart';
import 'package:super_indo/untilities/theme.dart';

appBar(height, context) => PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height / 16,
            left: 28.0,
            right: 28.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery address",
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "Salatiga City, Central Java",
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/Buy.png",
                      width: 20,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      "assets/icon/Notification.png",
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
