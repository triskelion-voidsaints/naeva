local csys = system.cur()
local cpos = csys:pos()
local destinations = {}
for i,s in ipairs(system.getAll()) do
  if s ~= csys then
	 for j,sp in ipairs(s:spobs()) do
		local t = sp:tags()
		if t.hypergate and t.active then
		   table.insert( destinations, sp )
		   print( destinations, sp )
		end
	 end
  end
end