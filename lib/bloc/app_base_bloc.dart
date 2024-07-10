import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_base_state.dart';
part 'app_base_event.dart';

// ignore_for_file: invalid_use_of_visible_for_testing_member

abstract class AppBaseBloc<E extends AppBaseEvent, S extends AppBaseState>
    extends Bloc<E, S> {
  final BuildContext context;
  final List<StreamSubscription> _subs = [];

  AppBaseBloc(this.context, super.state) {
    registerEvents();
    didLoad();
  }

  void registerEvents();
  void didLoad();

  void emitDirectly(S state) {
    emit(state);
  }

  @override
  Future<void> close() {
    state.close();
    for (var element in _subs) { element.cancel(); }
    return super.close();
  }
}

// Utils

extension RequestTaskEx on AppBaseBloc {

  newStreamSubscribe(StreamSubscription subscription) {
    _subs.add(subscription);
  }
}