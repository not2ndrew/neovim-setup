return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		-- Add your snippet(s)
		--
		-- const ____ = struct {};
		ls.add_snippets("all", {
			s("stru", {
				t("const "),
				i(1),
				t({ " = struct {", "\t" }),
				i(2),
				t({ "", "};" }),
			}),
			-- const ____ = enum {};
			s("enu", {
				t("const "),
				i(1),
				t({ " = enum {", "\t" }),
				i(2),
				t({ "", "};" }),
			}),

			-- const ____ = error {};
			s("err", {
				t("const "),
				i(1),
				t({ " = error {", "\t" }),
				i(2),
				t({ "", "};" }),
			}),

			-- const ____ = union {};
			s("uni", {
				t("const "),
				i(1),
				t({ " = union {", "\t" }),
				i(2),
				t({ "", "};" }),
			}),
		})
	end,
}
