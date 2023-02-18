import 'package:flutter/material.dart';
import 'package:super_indo/models/product_model.dart';
import 'package:super_indo/untilities/theme.dart';
import 'package:super_indo/views/productpage/product.dart';

class CardProduct extends StatelessWidget {
  Product? product;
  CardProduct({Key? key, this.product}) : super(key: key);

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetail(
                          product: product,
                        )),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 6.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(product!.defaultImageUrl ??
                        "https://cdn.thewirecutter.com/wp-content/media/2021/05/27-inch-monitor-2048px-1572.jpg")),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: kGreyColor,
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
                  product!.name,
                  style: blackTextStyle.copyWith(
                      fontSize: 10, fontWeight: regular),
                  maxLines: 1,
                ),
                Text(
                  "RP ${product!.price}",
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
