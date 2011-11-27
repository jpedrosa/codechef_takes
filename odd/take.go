
package main

import (
  "bufio"
  "os"
  "strconv"
  "fmt"
)

func main() {
  ios, _ := bufio.NewReaderSize(os.Stdin, 16384)
  a, _ := ios.ReadSlice('\n')
  count, _ := strconv.Atoi(string(a[:len(a) - 1]))
  list := make([]int64, count)
  for i := 0; i < count; i++ {
    a, _ = ios.ReadSlice('\n')
    n, _ := strconv.Atoi64(string(a[:len(a) - 1])) // Trim NewLine
    list[i] = n
  }
  original_list := list[:]
  for (len(list) > 3) {
    even := true
    keep_list := []int64{}
    len := len(list)
    for i := 0; i < len; i++ {
      even = !even;
      if (even) { keep_list = append(keep_list, list[i]) }
    }
    list = keep_list
  }
  placements := make([]int, len(list))
  for i := 0; i < len(list); i++ {
    olen := len(original_list)
    n := list[i]
    for j := 0; j < olen; j++ {
      if n == original_list[j] {
        placements[i] = j + 1
        break
      }
    }
  }
  for _, n := range placements { fmt.Println(n) }
}

