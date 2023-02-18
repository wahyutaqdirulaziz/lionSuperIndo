part of 'product_bloc.dart';


abstract class ProductEvent {}

// ignore: must_be_immutable
class ProductGetEvent extends ProductEvent {
  bool isLoad;
  ProductGetEvent({this.isLoad = false});
}
