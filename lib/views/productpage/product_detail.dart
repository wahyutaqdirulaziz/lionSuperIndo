part of 'product.dart';

class ProductDetail extends StatefulWidget {
  Product? product;
  ProductDetail({super.key, this.product});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        iconTheme: IconThemeData(
          color: kGreyColor, //change your color here
        ),
        title: Text(
          "Product Details",
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              widget.product!.defaultImageUrl ??
                  "https://cdn.thewirecutter.com/wp-content/media/2021/05/27-inch-monitor-2048px-1572.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12, right: 12, top: 10),
            // color: Colors.red,
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Text(
                        widget.product!.name,
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "RP ${widget.product!.price}",
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 18),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${widget.product!.unit}",
                          style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 12,
                              color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            // color: Colors.red,
            height: MediaQuery.of(context).size.height / 16,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  backgroundImage:
                      NetworkImage(widget.product!.defaultImageUrl),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lion SuperIndo ${widget.product!.id}",
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "online 12 mins ago",
                      style: greyTextStyle.copyWith(
                          fontWeight: medium, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          Container(
              margin: const EdgeInsets.only(left: 12, right: 12),
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description of product",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: greyTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 45,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                           
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 45,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            
                          },
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                              color: kBlackColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
