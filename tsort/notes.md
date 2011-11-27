
After tweaking the Go take a little by using a buffered writer and using
ReadSlices rather than ReadBytes, the Go take has closed the gap to the Ruby
version that appears to enjoy more optimized I/O:

    time ./take.rb < sample.txt > r.txt

    real	0m0.224s
    user	0m0.220s
    sys 	0m0.000s

    time ./take.dart < sample.txt > d.txt

    real	0m2.381s
    user	0m1.872s
    sys 	0m0.508s

    8g take.go && 8l -o gotake take.8 && time ./gotake < sample.txt > g.txt

    real	0m0.255s
    user	0m0.248s
    sys 	0m0.004s

===========

A first benchmark:

    time ./take.rb < sample.txt > r.txt

    real	0m0.225s
    user	0m0.216s
    sys 	0m0.004s

    time ./take.dart < sample.txt > d.txt

    real	0m2.393s
    user	0m1.872s
    sys 	0m0.516s

    8g take.go && 8l -o gotake take.8 && time ./gotake < sample.txt > g.txt

    real	0m0.895s
    user	0m0.436s
    sys 	0m0.456s

Talk about noteworthy findings here. Such as best current times.
