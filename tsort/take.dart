#!/usr/bin/env dart_release
#import("../common.dart");

main() {
  var nn = [];
  var ios = new StringInputStream(stdin);
  var count = Math.parseInt(ios.readLine());
  while (count > 0) {
    nn.add(Math.parseInt(ios.readLine()));
    count -= 1;
  }
  nn.sort((a, b) => a.compareTo(b));
  for (var n in nn) { print(n); }
  exit(0);
}

