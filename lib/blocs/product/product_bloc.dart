import 'package:bloc/bloc.dart';
import 'package:super_indo/models/product_model.dart';
import 'package:super_indo/services/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductService productService = ProductService();
  List<Product>? products = [];
  ProductBloc() : super(ProductInitial()) {
    on<ProductGetEvent>((event, emit) async {
      emit(ProductLoadingState());
      print("oke");
      try {
        ProductModel product_response = await productService.getProduct();
        print(product_response.products);
        products!.addAll(product_response.products!);
        emit(ProductLoadedState(products: products));
      } catch (e) {
        print(e);
        emit(ProductErrorState());
      }
    });
  }
}
