import 'package:flutter/material.dart';
import 'package:super_indo/untilities/theme.dart';

class CardShimmerProduct extends StatelessWidget {
  const CardShimmerProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1 / 3.4,
      width: MediaQuery.of(context).size.width * 1 / 2.5,
      margin: const EdgeInsets.all(2),
      color: kBackgroundColor,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 6.6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://cdn.thewirecutter.com/wp-content/media/2021/05/27-inch-monitor-2048px-1572.jpg")),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: Colors.redAccent,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 1 / 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aestechic Mug - white variant",
                  style: blackTextStyle.copyWith(
                      fontSize: 10, fontWeight: regular),
                ),
                Text(
                  "Rp . 20000",
                  style:
                      blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kPrimaryColor,
                  ),
                  height: 25,
                  width: MediaQuery.of(context).size.width * 1 / 2.4,
                  child: Center(
                      child: Text(
                    "Add to Cart",
                    style: whiteTextStyle.copyWith(
                        fontSize: 12, fontWeight: regular),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
