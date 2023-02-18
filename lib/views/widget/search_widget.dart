import "package:flutter/material.dart";
import 'package:super_indo/untilities/theme.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(left: 12, right: 12),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: kGreylineColor,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/icon/Search.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Search here ...",
              style: greyTextStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
