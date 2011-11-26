#!/usr/bin/env dart_release
#import("../common.dart");

main() {
  var nn = [];
  IO.readRawStdinLines((a) {
    nn.add(Math.parseInt(new String.fromCharCodes(a)));
  });
  nn.sort((a, b) => a.compareTo(b));
  for (var n in nn) { print(n); }
}

