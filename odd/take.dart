#!/usr/bin/env dart_release
#import("../common.dart");

main() {
  var list = [];
  var ios = new StringInputStream(stdin);
  var count = Math.parseInt(ios.readLine());
  while (count > 0) {
    list.add(Math.parseInt(ios.readLine()));
    count -= 1;
  }
  var original_list = list.getRange(0, list.length);
  while (list.length > 3) {
    var even = true;
    var keep_list = [];
    for (var n in list) {
      even = !even;
      if (even) { keep_list.add(n); }
    }
    list = keep_list;
  }
  for (var n in list) { print(original_list.indexOf(n) + 1); }
  exit(0);
}

