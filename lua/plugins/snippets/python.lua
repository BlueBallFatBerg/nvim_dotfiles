return {
  s("inm", fmt([[
  if __name__ == "__main__":
      <>
  ]],
  { i(1, "test_") },
  { delimiters = "<>" })),

  s("logi", fmt([[
    logger.info("<>", <>)
  ]],
  { i(1, "msg"), i(2, "args") },
  { delimiters = "<>"})),

  s("loge", fmt([[
    logger.error("<>", <>)
  ]],
  { i(1, "msg"), i(2, "args") },
  { delimiters = "<>"})),

  s("logd", fmt([[
    logger.debug("<>", <>)
  ]],
  { i(1, "msg"), i(2, "args") },
  { delimiters = "<>"})),

  s("logw", fmt([[
    logger.warning("<>", <>)
  ]],
  { i(1, "msg"), i(2, "args") },
  { delimiters = "<>"})),

  s("scn", t("self.__class__.__name__")),

  s("tbd", t("TODO: to be deprecated")),

  s("dsa", t("Dict[str, Any]")),

  s("pxxx", fmt([[
    print("xxx <>", <>)
  ]],
  { i(1, "msg"), i(2, "args") },
  { delimiters = "<>"})),
}

