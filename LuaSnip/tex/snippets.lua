return {
	s({ trig = "frac", dscr = "Expands 'frac' into '\frac{}{}'", snippetType = "autosnippet" }, {
		t("\\frac{"),
		i(1), -- insert node 1
		t("}{"),
		i(2), -- insert node 2
		t("}"),
	}),
	s({ trig = "__", wordTrig = false, dscr = "Expands '__' into '_{}'", snippetType = "autosnippet" }, {
		t("_{"),
		i(1), -- insert node 1
		t("}"),
	}),
	s({ trig = "^^", wordTrig = false, dscr = "Expands '^^' into '^{}'", snippetType = "autosnippet" }, {
		t("^{"),
		i(1), -- insert node 1
		t("}"),
	}),
	s({ trig = "\\tilde", wordTrig = false, dscr = "Expands '\tilde' into '\tilde{}'", snippetType = "autosnippet" }, {
		t("\\tilde{"),
		i(1), -- insert node 1
		t("}"),
	}),
	s({
		trig = "\\left(",
		wordTrig = false,
		dscr = "Expands 'left()' into 'left(  \right)'",
		snippetType = "autosnippet",
	}, {
		t("\\left( "),
		i(1), -- insert node 1
		t(" \\right)"),
	}),
}
