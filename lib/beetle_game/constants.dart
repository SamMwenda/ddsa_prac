//Head variations

import 'dart:io';

final head1 = "    __ \n"
    "  ( )( )\n";

final head2 = "    __ \n"
    "  (@)( )\n";

final head3 = "    __ \n"
    "  (@)(@)\n";

final head4 = "    __!\n"
    "  (@)( )\n";

final head5 = "   !__!\n"
    "  (@)( )\n";

final head6 = "    __!\n"
    "  (@)(@)\n";

final head7 = "   !__!\n"
    "  (@)(@)\n";

final head8 = "    __!\n"
    "  ( )( )\n";

final head9 = "   !__!\n"
    "  ( )( )\n";

//body variations

final body1 = " \\.'||'./\n"
    "-:  ::  :-\n"
    "/'..''..'\\\n";

final body2 = "  .'||'. \n"
    " :  ::  : \n"
    " '..''..' \n";

final body3 = " \\.'||'./\n"
    " :  ::  : \n"
    " '..''..' \n";

final body4 = " \\.'||'./\n"
    " :  ::  : \n"
    "/'..''..'\\\n";

final noBug = "(no parts yet)";

final welcome = "\n\n\n╔╦╦╦═╦╗╔═╦═╦══╦═╗\n"
    "║║║║╩╣╚╣═╣║║║║║╩╣\n"
    "╚══╩═╩═╩═╩═╩╩╩╩═╝\n";

final header = "$welcome\n$head7$body1\nThe Beetle Game\n\n\n";

void drawProgressBar(double amount, int size) {
  final limit = (size * amount).toInt();
  stdout.write(
    '\r\x1b[38;5;75;51m${String.fromCharCodes(List.generate(size, (int index) {
      if (index < limit) {
        return 0x2593;
      }
      return 0x2591;
    }))}\x1b[0m',
  );
}

void drawProgressBar2(double amount, int size) {
  final limit = (size * amount).toInt();
  stdout.write(
    '\r\x1b[38;5;75;51m${String.fromCharCodes(List.generate(size, (int index) {
      if (index < limit) {
        return 0x002A;
      }
      return 0x002B;
    }))}\x1b[0m\n\n',
  );
}

void drawProgressBar1(double amount, int size) {
  final limit = (size * amount).toInt();
  stdout.write(
    '\r\x1b[38;5;75;51m${String.fromCharCodes(List.generate(size, (int index) {
      if (index < limit) {
        return 0x0077;
      }
      return 0x2591;
    }))}\x1b[0m',
  );
}

String color(String value) {
  return "\x1b[38;5;39m$value\x1b[0m";
}
