return {
  s("todoq", {
    t({"> [!Todo]", "> "}),
    i(0),
  }),

  s("noteq", {
    t({"> [!Note]", "> "}),
    i(0),
  }),

  s("warnq", {
    t({"> [!Warning]", "> "}),
    i(0),
  }),

  s("whatq", {
    t({"> [What?]", "> "}),
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
