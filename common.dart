
#library("common");


inspect(v) {
  var s;
  if (v is String) {
    s = '"$v"';
  } else if (v is List) {
    var sb = new StringBuffer();
    var comma = false;
    sb.add("[");
    for (var i in v) {
      if (comma) {
        sb.add(', ');
      } else {
        comma = true;
      }
      sb.add(inspect(i));
    }
    sb.add("]");
    s = sb.toString();
  } else {
    s = '$v';
  }
  return s;
}

p(v) {
  print(inspect(v)); 
}


class IO {

  static void readRawStdinLines(fn) {
    var a = null;
    var saved = null;
    while ((a = stdin.read(16384)) !== null) {
      var startAt = 0;
      var len = a.length;
      for (var i = 0; i < len; i++) {
        if (a[i] == 10) { // Newline, \n.
          if (saved !== null) {
            saved.addAll(a.getRange(startAt, i - startAt));
            fn(saved);
            saved = null;
          } else {
            fn(a.getRange(startAt, i - startAt));
          }
          startAt = i + 1;
        }
      }
      if (startAt < len) { saved = a.getRange(startAt, len - startAt); }
    }
    if (saved !== null) { fn(saved); }
  }
}




