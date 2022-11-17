// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:ddsa_prac/beetle_game/beetle_game.dart';

///emits a beetle head with parts
class HeadCubit extends Cubit<String> {
  HeadCubit() : super("");

  Function eq = const ListEquality().equals;
  void returnHead(List<String> headParts) {
    if (eq(headParts, ["head"])) {
      emit(head1);
    } else if (eq(headParts, ["head", "@"])) {
      emit(head2);
    } else if (eq(headParts, ["head", "@", "@"])) {
      emit(head3);
    } else if (eq(headParts, ["head", "@", "!"])) {
      emit(head4);
    } else if (eq(headParts, ["head", "@", "!", "!"])) {
      emit(head5);
    } else if (eq(headParts, ["head", "@", "@", "!"])) {
      emit(head6);
    } else if (eq(headParts, ["head", "@", "@", "!", "!"]) ||
        eq(headParts, ["head", "@", "!", "@", "!"])||
        eq(headParts, ["head", "@", "!", "!", "@"])||
        eq(headParts, ["head", "!", "!", "@", "@"])) {
      emit(head7);
    } else if (eq(headParts, [
      "head",
      "!",
    ])) {
      emit(head8);
    } else if (eq(headParts, [
      "head",
      "!",
      "!",
    ])) {
      emit(head9);
    }
  }
}
