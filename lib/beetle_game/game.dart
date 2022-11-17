// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:collection/collection.dart';

import 'package:ddsa_prac/beetle_game/beetle_game.dart';

/// A two player simulation of the beetle game
class Game {
  final List<String> _body = [];
  final List<String> _head = [];
  final List<String> _body1 = [];
  final List<String> _head1 = [];

  final Beetle _bug1 = Beetle();
  final Beetle _bug2 = Beetle();

  final Die _die = Die();

  final _headCubit = HeadCubit();
  final _bodyCubit = BodyCubit();

  Function eq = const ListEquality().equals;

  int counter1 = 0;
  int counter2 = 0;

  Future<void> play() async {
    int player = 1;
    Beetle bug = _bug1;

    print('\n\x1b[38;5;39mInitializing\x1b[0m');
    for (int j = 0; j < 3; j++) {
      for (int i = 0; i <= 100; i++) {
        drawProgressBar(i / 100.0, 20);
        await Future.delayed(const Duration(milliseconds: 5));
      }
    }

    while (!((head7 + body1) == _headCubit.state + _bodyCubit.state)) {
      String? playerTurn = stdin.readLineSync();
      if (counter1 <= counter2) {
        counter1 += 1;
        bug = _bug2;
        player = 1;
        takeTurn(player, bug, _body, _head);
      } else {
        counter2 += 1;
        bug = _bug2;
        player = 1;
        takeTurn(player, bug, _body1, _head1);
      }
      print("body:${bug.body}");
      print("head:${bug.head}");
      print("leg:${bug.leg}");
      print("eye:${bug.eye}");
      print("feeler:${bug.feeler}");
      print(_body + _head);
      print(_body1 + _head1);
    }
    print("🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊\n\n");
    print('\n\x1b[38;5;39mPlayer $player Wins\x1b[0m');
    for (int j = 0; j < 3; j++) {
      for (int i = 0; i <= 100; i++) {
        drawProgressBar1(i / 100.0, 20);
        await Future.delayed(const Duration(milliseconds: 50));
      }
    }
    print("\n\nPlayer $player won after ${counter1 + counter2}rounds");
  }

  void takeTurn(
    int player,
    Beetle bug,
    List<String> bodyParts,
    List<String> headParts,
  ) {
    stdout.write("Player $player your beetle:\n\n");
    _bodyCubit.returnBody(bodyParts);
    _headCubit.returnHead(headParts);
    print(color(_headCubit.state + _bodyCubit.state));
    //roll();
    int rolledNumber = _die.topFace;
    stdout.write("Player $player rolled a $rolledNumber");
    switch (rolledNumber) {
      case1:
      case 1:
        stdout.write(" (body)\n\n");
        if (bug.addBody()) {
          break;
        } else {
          if (!_body.contains("body")) {
            _body.add("body");
          }
          break;
        }
      case2:
      case 2:
        stdout.write(" (head)\n\n");
        if (bug.addHead()) {
          break;
        } else {
          if (!headParts.contains("head") && _body.contains("body")) {
            headParts.add("head");
          }

          break;
        }
      case3:
      case 3:
        stdout.write(" (leg)\n\n");
        if (bug.addLeg()) {
          break;
        } else {
          if (eq(_body, ["body"]) ||
              eq(_body, ["body", "-"]) ||
              eq(_body, ["body", "-", "-"])) {
            _body.add("-");
          }

          break;
        }
      case4:
      case 4:
        stdout.write(" (eye)\n\n");
        if (bug.addEye()) {
          break;
        } else {
          if (eq(headParts, ["head"]) ||
              eq(headParts, ["head", "@"]) ||
              eq(headParts, ["head", "!", "!"]) ||
              eq(headParts, ["head", "!"]) ||
              eq(headParts, ["head", "@", "!"]) ||
              eq(headParts, ["head", "@", "!", "!"])) {
            headParts.add("@");
          }

          break;
        }
      case5:
      case 5:
        stdout.write(" (feeler)\n\n");
        if (bug.addFeeler()) {
          break;
        } else {
          if (eq(headParts, ["head"]) ||
              eq(headParts, ["head", "!"]) ||
              eq(headParts, ["head", "@", "@"]) ||
              eq(headParts, ["head", "@", "!"]) ||
              eq(headParts, ["head", "@"]) ||
              eq(headParts, ["head", "@", "@", "!"])) {
            headParts.add("!");
          }

          break;
        }
      default:
        stdout.write(" (Roll again!!)\n\n");
        //roll();
        final number = Random();
        rolledNumber = number.nextInt(5) + 1;
        stdout.write("Player $player rolled a $rolledNumber");
        switch (rolledNumber) {
          case 1:
            continue case1;
          case 2:
            continue case2;
          case 3:
            continue case3;
          case 4:
            continue case4;
          case 5:
            continue case5;
        }
    }
  }

  Future<void> roll() async {
    print('\n\x1b[38;5;39mRolling die\x1b[0m\n');
    for (int j = 0; j < 3; j++) {
      for (int i = 0; i <= 100; i++) {
        drawProgressBar2(i / 100.0, 20);
        await Future.delayed(const Duration(milliseconds: 5));
      }
    }
  }
}
