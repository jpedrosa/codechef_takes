
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
  nn := []int{}
  a, err := ios.ReadBytes('\n')
  for err == nil {
    n, _ := strconv.Atoi(string(a[:len(a) - 1])) // Trim NewLine
    nn = append(nn, n)
    a, err = ios.ReadBytes('\n')
  }
  sort.Ints(nn)
  for _, n := range nn { fmt.Println(n) }
}

