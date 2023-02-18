import 'package:flutter/material.dart';
import 'package:super_indo/untilities/theme.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Text(
              "Category",
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
          const SizedBox(height: 10),
          Container(
              height: 80,
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kBluelightColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image.asset("assets/icon/baju.png"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Apparel",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: regular),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kBluelight2Color,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image.asset("assets/icon/atk.png"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "School",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: regular),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kOrangelightColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image.asset("assets/icon/sport.png"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Sports",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: regular),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kRedlightColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image.asset("assets/icon/electro.png"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Electronic",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: regular),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kGreenlightColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Image.asset("assets/icon/Category.png"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "All",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: regular),
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
