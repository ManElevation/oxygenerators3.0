minetest.register_abm({
   nodenames = {"oxygeneratorbig:oxygenerator_big"}, --makes small particles emanate from the beginning of a beam
   interval = 1,
   chance = 2,
   action = function(pos, node)
      minetest.add_particlespawner( 
         12, --amount
         4, --time
         {x=pos.x-0.95, y=pos.y-0.95, z=pos.z-0.95},
         {x=pos.x+0.95, y=pos.y+0.95, z=pos.z+0.95},
         {x=-1.2, y=-1.2, z=-1.2}, 
         {x=1.2, y=1.2, z=1.2}, 
         {x=0,y=0,z=0}, 
         {x=0,y=0,z=0},
         0.5,
         1, 
         1, 
         2,
         false, 
         "bubble.png"
      )
   end,
})
