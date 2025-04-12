local hypergate = require "spob.lua.lib.hypergate"
local lib = {}
function lib.setup( params )
	params = params or {}
	params.tex = params.tex or "9.webp"
	params.tex_mask = params.tex_mask or "9 mask.webp"
	params.basecol = params.basecol or { 0.172, 0.458, 1 }
	params.cost_mod = params.cost_mod or {
	[100] = 0, 
	[90]  = 0.1, 
	[80]  = 0.2, 
	[70]  = 0.3, 
	[50]  = 0.5, 
	[30]  = 0.8, 
	[10]  = 0.9,}
	return hypergate.setup( params )
end
return lib
