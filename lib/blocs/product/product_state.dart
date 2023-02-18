part of 'product_bloc.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<Product>? products;
  ProductLoadedState({required this.products});
  @override
  List<Object> get props => [products!];
}

class ProductErrorState extends ProductState {}
