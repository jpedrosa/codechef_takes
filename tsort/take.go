
package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "sort"
)

func main() {
  ios := bufio.NewReader(os.Stdin)
  a, _ := ios.ReadBytes('\n')
  count, _ := strconv.Atoi(string(a[:len(a) - 1]))
  nn := make([]int, count)
  for i := 0; i < count; i++ {
    a, _ = ios.ReadBytes('\n')
    n, _ := strconv.Atoi(string(a[:len(a) - 1])) // Trim NewLine
    nn[i] = n
  }
  sort.Ints(nn)
  for _, n := range nn { fmt.Println(n) }
}

