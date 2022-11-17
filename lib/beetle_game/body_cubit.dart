// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:ddsa_prac/beetle_game/beetle_game.dart';

/// emits a beetle body with parts or no parts
class BodyCubit extends Cubit<String> {
  BodyCubit() : super("");

  Function eq = const ListEquality().equals;
  void returnBody(List<String> bodyParts) {
    if (eq(bodyParts, ["body"])) {
      emit(body2);
    } else if (eq(bodyParts, ["body", "-"])) {
      emit(body3);
    } else if (eq(bodyParts, ["body", "-", "-"])) {
      emit(body4);
    } else if (eq(bodyParts, ["body", "-", "-", "-"])) {
      emit(body1);
    } else {
      emit("(no body parts)");
    }
  }
}
