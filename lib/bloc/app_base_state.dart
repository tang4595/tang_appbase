part of 'app_base_bloc.dart';

abstract class AppBaseState {
  void init(dynamic params);
  void close();
}