return {
  s(
    {
      trig = "test",
      name = "xxx",
      dscr = [[ int main for test.c ]]
    },
    {
      t({"#include <stdio.h>", "", "int main() {", "  "}),  -- 多行字符串
      i(0),
      t({"", "  return 0;", "}"}),  -- 多行字符串
    }
  ),
}
