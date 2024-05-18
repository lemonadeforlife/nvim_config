local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("yaml", {
	s(
		"name",
		fmt(
			[[
  - name: {}
    disabled: {}

{}
    ]],
			{
				i(1),
				c(2, {
					t("true"),
					t("false"),
				}),
				i(0),
			}
		)
	),
})

ls.add_snippets("html", {
	s(
		"but.",
		fmt(
			[[
<button class="{}">{}</button>{}
  ]],
			{
				i(1),
				i(2),
				i(0),
			}
		)
	),
})

ls.add_snippets("html", {
	s(
		"but#",
		fmt(
			[[
<button id="{}">{}</button>{}
  ]],
			{
				i(1),
				i(2),
				i(0),
			}
		)
	),
})
