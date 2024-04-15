local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local MATH_NODES = {
	displayed_equation = true,
	inline_formula = true,
	math_environment = true,
}

local TEXT_NODES = {
	text_mode = true,
	label_definition = true,
	label_reference = true,
}

local function get_node_at_cursor()
	local pos = vim.api.nvim_win_get_cursor(0)
	-- Subtract one to account for 1-based row indexing in nvim_win_get_cursor
	local row, col = pos[1] - 1, pos[2]

	local parser = vim.treesitter.get_parser(0, "latex")
	if not parser then
		return
	end

	local root_tree = parser:parse({ row, col, row, col })[1]
	local root = root_tree and root_tree:root()
	if not root then
		return
	end

	return root:named_descendant_for_range(row, col, row, col)
end

local in_mathzone = function()
	local node = get_node_at_cursor()
	while node do
		if TEXT_NODES[node:type()] then
			return false
		elseif MATH_NODES[node:type()] then
			return true
		end
		node = node:parent()
	end
	return false
end

local is_math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local M = {}

M.decorator = {}

local postfix_trig = function(match)
	return string.format("(%s)", match)
end

local postfix_node = f(function(_, snip)
	print("i'm executed")
	return string.format("\\%s", snip.captures[1])
end, {})

local build_snippet = function(trig, node, match, priority, name)
	return s({
		name = name and name(match) or match,
		trig = trig(match),
		priority = priority,
	}, vim.deepcopy(node))
end

local build_with_priority = function(trig, node, priority, name)
	return function(match)
		return build_snippet(trig, node, match, priority, name)
	end
end

local greek_postfix_completions = function()
	local re =
		"[aA]lpha|[bB]eta|[cC]hi|[dD]elta|[eE]psilon|[gG]amma|[iI]ota|[kK]appa|[lL]ambda|[mM]u|[nN]u|[oO]mega|[pP]hi|[pP]i|[rR]ho|[sS]igma|[tT]au|[tT]heta|[zZ]eta|[eE]ta|[pP]si"

	local build = build_with_priority(postfix_trig, postfix_node, 200)
	return vim.tbl_map(build, vim.split(re, "|"))
end

local snippets = {}

local pipe = function(fns)
	return function(...)
		for _, fn in ipairs(fns) do
			if not fn(...) then
				return false
			end
		end

		return true
	end
end

local no_backslash = function(line_to_cursor, matched_trigger)
	return not line_to_cursor:find("\\%a+$", -#line_to_cursor)
end

function M.retrieve()
	M.decorator = {
		wordTrig = false,
		trigEngine = "pattern",
		condition = pipe({ is_math, no_backslash }),
	}

	s = ls.extend_decorator.apply(ls.snippet, M.decorator) --[[@as function]]

	vim.list_extend(snippets, greek_postfix_completions())
	vim.list_extend(snippets, { build_snippet(postfix_trig, postfix_node, "q?quad", 200) })

	return snippets
end

local _autosnippets = function()
	local autosnippets = {}

	vim.list_extend(autosnippets, M.retrieve())

	return autosnippets
end

ls.add_snippets("tex", _autosnippets(), {
	type = "autosnippets",
	default_priority = 0,
})
