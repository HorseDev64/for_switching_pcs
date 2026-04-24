return {
  s(
    "tstruct",
    fmt(
      [[
typedef struct {{
    {}
}} {};
      ]],
      {
        i(1), -- campos
        i(2), -- nombre del typedef
      }
    )
  ),
}
