
package main

import (
  "bufio"
  "os"
  "strconv"
  "sort"
)

func main() {
  ios, _ := bufio.NewReaderSize(os.Stdin, 16384)
  bw, _ := bufio.NewWriterSize(os.Stdout, 16384)
  a, _ := ios.ReadSlice('\n')
  count, _ := strconv.Atoi(string(a[:len(a) - 1]))
  nn := make([]int, count)
  for i := 0; i < count; i++ {
    a, _ = ios.ReadSlice('\n')
    n, _ := strconv.Atoi(string(a[:len(a) - 1])) // Trim NewLine
    nn[i] = n
  }
  sort.Ints(nn)
  for _, n := range nn {
    bw.WriteString(strconv.Itoa(n))
    bw.WriteByte('\n')
  }
  bw.Flush()
}

