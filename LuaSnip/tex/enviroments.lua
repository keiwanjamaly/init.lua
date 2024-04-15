return {
	-- Begin enviroment
	s({ trig = "begin", dscr = "Creates an \\begin{} \\end{} enviroment" }, {
		t("\\begin{"),
		i(1),
		t({ "}", "    " }),
		i(2),
		t({ "", "\\end{" }),
		rep(1),
		t({ "}" }),
	}),
	-- Align enviroment
	s({ trig = "ali", dscr = "Creates an \\begin{align} \\end{align} enviroment" }, {
		t({ "\\begin{align}", "    " }),
		i(1),
		t({ "", "\\end{align}" }),
	}),
	-- pmatrix enviroment
	s({ trig = "pmatrix", dscr = "Creates an \\begin{pmatrix} \\end{pmatrix} enviroment" }, {
		t({ "\\begin{pmatrix} " }),
		i(1),
		t({ " \\end{pmatrix}" }),
	}),
}
