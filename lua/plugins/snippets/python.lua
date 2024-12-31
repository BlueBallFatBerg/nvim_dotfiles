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

  s(
    {
      trig = "lgi",
      name = "xxx",
      dscr = [[ logger.info("xxx") ]]
    },
    fmt(
      [[
      logger.info("<> <>: <> %s", <>)
      ]],
      {
        i(1, "module"),
        i(2, "function"),
        i(3, "xxx"),
        i(4, "variable"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "ptf",
      name = "xxx",
      dscr = [[ print(f"xxx") ]]
    },
    fmt(
      [[
      print(f"<> <>: <> {<>}")
      ]],
      {
        i(1, "module"),
        i(2, "function"),
        i(3, "xxx"),
        i(4, "variable"),
      },
      { delimiters = "<>" }
    )
  ),
}
