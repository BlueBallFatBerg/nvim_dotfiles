return {
  s(
    {
      trig = "inm",
      name = "xxx",
      dscr = [[ if __name__ == "__main__" ]]
    },
    fmt(
      [[
      if __name__ == "__main__":
        <>
      ]],
      {
        i(1, "test_")
      },
      { delimiters = "<>" }
    )
  ),
}
