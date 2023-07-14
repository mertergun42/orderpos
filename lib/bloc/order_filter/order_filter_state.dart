part of 'order_filter_cubit.dart';


abstract class OrderFilterState {}

class OrderFilterInitial extends OrderFilterState {}

class OrderWaitingInitial extends OrderFilterState {}

class OrderCancelInitial extends OrderFilterState {}
