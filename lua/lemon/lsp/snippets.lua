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

ls.add_snippets("c", {
	s(
		"inc",
		fmt(
			[[
#include<stdio.h>

int main()
{{
  {} {};
  {}
  return 0;
}}
  ]],
			{
				c(1, {
					t("int"),
					t("double"),
					t("float"),
					t("char"),
				}),
				i(2),
				i(0, "// Write your code here"),
			}
		)
	),
})

ls.add_snippets("c", {
	s(
		"inm",
		fmt(
			[[
#include<stdio.h>
#include<math.h>

int main()
{{
  {} {};
  {}
  printf("{}");
  return 0;
}}
  ]],
			{
				c(1, {
					t("int"),
					t("double"),
					t("float"),
					t("char"),
				}),
				i(2),
				i(3, "// Write your code here"),
				i(0),
			}
		)
	),
})

ls.add_snippets("c", {
	s(
		"ini",
		fmt(
			[[
#include<stdio.h>

int main()
{{
  {} {};
  scanf("%{}", &{});
  if ({}) {{
    {}
  }}
  else {{
    {}
  }}
  return 0;
}}
  ]],
			{
				c(1, {
					t("int"),
					t("double"),
					t("float"),
					t("char"),
				}),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
				i(0),
			}
		)
	),
})

ls.add_snippets("c", {
	s(
		"ine",
		fmt(
			[[
#include<stdio.h>

int main()
{{
  {} {};
  scanf("%{}", &{});
  if ({}) {{
    {}
  }}
  else if ({}) {{
    {}
  }}
  else {{
    {}
  }}
  return 0;
}}
  ]],
			{
				c(1, {
					t("int"),
					t("double"),
					t("float"),
					t("char"),
				}),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
				i(7),
				i(8),
				i(0),
			}
		)
	),
})
