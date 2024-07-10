part of 'app_base_bloc.dart';

@immutable
abstract class AppBaseEvent {}

@immutable
abstract class AppBaseBoolValueEvent extends AppBaseEvent {
  final BuildContext? context;
  final bool value;
  AppBaseBoolValueEvent(this.value, { this.context });
}

@immutable
abstract class AppBaseStringValueEvent extends AppBaseEvent {
  final BuildContext? context;
  final String value;
  AppBaseStringValueEvent(this.value, { this.context });
}

@immutable
abstract class AppBaseNumberValueEvent extends AppBaseEvent {
  final BuildContext? context;
  final num value;
  AppBaseNumberValueEvent(this.value, { this.context });
}