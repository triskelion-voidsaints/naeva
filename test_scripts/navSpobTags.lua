print("hello world!")
local spb = player.pilot():navSpob()
if spb then
   for k,v in ipairs(spb:tags()) do
      print(k,v)
   end
end
print("hello world!")