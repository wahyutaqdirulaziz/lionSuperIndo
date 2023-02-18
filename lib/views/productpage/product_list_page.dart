part of 'product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ScrollController _controller = ScrollController();
  Timer? _timer;
  late double _progress;
  @override
  Widget build(BuildContext context) {
    void _loading() async {
      _progress = 0;
      _timer?.cancel();
      _timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
        EasyLoading.showProgress(_progress,
            status: '${(_progress * 100).toStringAsFixed(0)}%');
        _progress += 0.03;

        if (_progress >= 1) {
          _timer?.cancel();
          EasyLoading.dismiss();
        }
      });
    }

    void initState() {
      _loading();
      super.initState();

      // EasyLoading.removeCallbacks();
    }

    return BlocProvider(
      create: (context) => ProductBloc()..add(ProductGetEvent()),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kBackgroundColor,
          iconTheme: IconThemeData(
            color: kGreyColor, //change your color here
          ),
          title: Text(
            "Product list",
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoadingState) {
              return Shimmer.fromColors(
                baseColor: kPrimaryColor,
                highlightColor: kGreyColor,
                child: Container(
                  margin: const EdgeInsets.all(12),
                  child: ListView(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All product",
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 14),
                      child: Wrap(
                        spacing: 12,
                        direction: Axis.horizontal, // default,,
                        children: const [
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct()
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            }

            if (state is ProductLoadedState) {
              return Container(
                margin: const EdgeInsets.all(12),
                child: NotificationListener<ScrollEndNotification>(
                  child: ListView(controller: _controller, children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All product",
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 14),
                      child: Wrap(
                        spacing: 12,
                        direction: Axis.horizontal, // default,,
                        children: state.products!
                            .map((e) => CardProduct(
                                  product: e,
                                ))
                            .toList(),
                      ),
                    ),
                  ]),
                  onNotification: (notification) {
                    if (notification.metrics.atEdge) {
                      if (notification.metrics.pixels == 0) {
                        print('At top');
                      } else {
                        print('At bottom');
                        // with extensions
                        _loading();
                        context
                            .read<ProductBloc>()
                            .add(ProductGetEvent(isLoad: true));
                      }
                    }
                    return true;
                  },
                ),
              );
            } else {
              return Shimmer.fromColors(
                baseColor: kPrimaryColor,
                highlightColor: kGreyColor,
                child: Container(
                  margin: const EdgeInsets.all(12),
                  child: ListView(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All product",
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 14),
                      child: Wrap(
                        spacing: 12,
                        direction: Axis.horizontal, // default,,
                        children: const [
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct(),
                          CardShimmerProduct()
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
