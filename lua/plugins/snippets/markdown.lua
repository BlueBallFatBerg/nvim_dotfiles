return {
  s("todoq", {
    t({"> [!Todo]", "> "}),  -- 多行字符串
    i(0),
  }),

  s("noteq", {
    t({"> [!Note]", "> "}),  -- 多行字符串
    i(0),
  }),

  s("warnq", {
    t({"> [!Warning]", "> "}),  -- 多行字符串
    i(0),
  }),

  s("whatq", {
    t({"> [What?]", "> "}),  -- 多行字符串
    i(0),
  }),

  s("eg", {
    t({"e.g."}),
    i(0),
  }),
  
  postfix(".sbb", {  -- bracket
    f(function(_, parent)
      return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
    end, {}),
  }),

  postfix(".pbb", {  -- bracket
    f(function(_, parent)
      return "(" .. parent.snippet.env.POSTFIX_MATCH .. ")"
    end, {}),
  }),
  
  postfix(".cbb", {  -- bracket
    f(function(_, parent)
      return "{" .. parent.snippet.env.POSTFIX_MATCH .. "}"
    end, {}),
  }),

  postfix(".code", {  -- single quote
    f(function(_, parent)
      return "`" .. parent.snippet.env.POSTFIX_MATCH .. "`"
    end, {}),
  }),

  postfix(".bold", {  -- double ast
    f(function(_, parent)
      return "**" .. parent.snippet.env.POSTFIX_MATCH .. "**"
    end, {}),
  }),

  s("todo", {
    t({"- [ ] "}),
    i(0),
  }),
}
