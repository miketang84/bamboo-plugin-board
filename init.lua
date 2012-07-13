module(..., package.seeall)

local TMPLS = {
	['basic'] = '../plugins/board/views/basic.html'

}

--[[
{^ board _tag="xxx",
	title = 'xxx',
	body = View('../xxx'){ xx = v}

^}
--]]
function main(args, env)
	assert(args._tag, '[Error] @plugin board - missing _tag.')
	assert(args.title, '[Error] @plugin board - missing title.')
	assert(args.body, '[Error] @plugin board - missing body.')
	
	local tmpl = args.tmpl and TMPLS[args.tmpl] and args.tmpl or 'basic'
	
	return View(TMPLS[tmpl])(args)
end

