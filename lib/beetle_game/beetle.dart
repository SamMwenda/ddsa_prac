import 'package:ddsa_prac/beetle_game/beetle_game.dart';

/// Beetle with parts for beetle game;
/// This class is currently expandable
/// Maintained for upgrade purposes
class Beetle {
  bool body = false;
  int eye = 0;
  int feeler = 0;
  bool head = false;
  int leg = 0;
  bool tail = false;

  /// Try add a body
  bool addBody() {
    if (body) {
      return false;
    } else {
      body = true;
      return body;
    }
  }

  /// Try add an eye
  bool addEye() {
    if (eye < 2) {
      eye += 1;
      return true;
    } else {
      return false;
    }
  }

  /// Try add a feeler
  bool addFeeler() {
    if (feeler < 2) {
      feeler += 1;
      return true;
    } else {
      return false;
    }
  }

  /// Try add a head
  bool addHead() {
    if (head) {
      return false;
    } else {
      head = true;
      return head;
    }
  }

  /// Try add a Leg
  /// Two legs are added per turn
  bool addLeg() {
    if (leg < 6) {
      leg += 2;
      return true;
    } else {
      return false;
    }
  }

  bool isComplete(String input) => input == (head7 + body1);
}
