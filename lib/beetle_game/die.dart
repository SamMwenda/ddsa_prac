import 'dart:math';

/// A six-sided die for use in games
class Die {
  
  // return a random number between 1 and 6
  int get topFace {
    final random = Random();
    return random.nextInt(6) + 1;
  }

}
