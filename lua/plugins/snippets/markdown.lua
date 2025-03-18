return {
  s("tdq", {
    t({"> [!TODO]", "> "}),  -- 多行字符串
    i(0),
  }),

  postfix(".br", {
    f(function(_, parent)
      return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
    end, {}),
  }),
}
