part of "home.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(AppBar().preferredSize.height, context),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return Shimmer.fromColors(
              baseColor: kPrimaryColor,
              highlightColor: kGreyColor,
              child: Container(
                  margin: const EdgeInsets.all(12),
                  child: ListView(children: [
                    const Search(),
                    const SizedBox(height: 10),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(ConstantHelper.IMG_BANNER)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const CardMenu(),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recent product",
                                  style: blackTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage()),
                                    );
                                  },
                                  child: Text(
                                    "All product",
                                    style: greenTextStyle.copyWith(
                                        fontSize: 12, fontWeight: medium),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Wrap(
                              spacing: 12,
                              direction: Axis.horizontal, // default,,
                              children: const [
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
            );
          }

          if (state is ProductLoadedState) {
            return Container(
                margin: const EdgeInsets.all(12),
                child: ListView(children: [
                  const Search(),
                  const SizedBox(height: 10),
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(ConstantHelper.IMG_BANNER)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CardMenu(),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent product",
                                style: blackTextStyle.copyWith(
                                    fontSize: 14, fontWeight: medium),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductPage()),
                                  );
                                },
                                child: Text(
                                  "All product",
                                  style: greenTextStyle.copyWith(
                                      fontSize: 12, fontWeight: medium),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Wrap(
                            spacing: 12,
                            direction: Axis.horizontal, // default,,
                            children: state.products!
                                .map((e) => CardProduct(
                                      product: e,
                                    ))
                                .take(4)
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  )
                ]));
          } else {
            return Shimmer.fromColors(
              baseColor: kPrimaryColor,
              highlightColor: kGreyColor,
              child: Container(
                  margin: const EdgeInsets.all(12),
                  child: ListView(children: [
                    const Search(),
                    const SizedBox(height: 10),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(ConstantHelper.IMG_BANNER)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const CardMenu(),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recent product",
                                  style: blackTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductPage()),
                                    );
                                  },
                                  child: Text(
                                    "All product",
                                    style: greenTextStyle.copyWith(
                                        fontSize: 12, fontWeight: medium),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Wrap(
                              spacing: 12,
                              direction: Axis.horizontal, // default,,
                              children: const [
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                                CardShimmerProduct(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
            );
          }
        },
      ),
    );
  }
}
