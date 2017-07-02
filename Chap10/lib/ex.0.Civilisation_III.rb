=begin
Fixing the bug of when the continent would border the the edge of the world.
The method should return ZERO when the values for x and/or zero exceed the borders of the world.
These are just to make the map easier for me to read.
M is visually more dense than o.

Yuliya
=end

M = 'land'
o = 'water'
world = [[M, o, o, o, o, o, o, o, o, o, M],
        [o, o, o, o, M, M, o, o, o, o, o],
        [o, o, o, o, o, o, o, o, M, M, o],
        [o, o, o, M, o, o, o, o, o, M, o],
        [o, o, o, M, o, M, M, o, o, o, o],
        [o, o, o, o, M, M, M, M, o, o, o],
        [o, o, o, M, M, M, M, M, M, M, o],
        [o, o, o, M, M, o, M, M, M, o, o],
        [o, o, o, o, o, o, M, M, o, o, o],
        [o, o, o, o, o, M, o, o, o, o, o],
        [M, o, o, o, o, o, o, o, o, o, M]]

def continent_size world, x, y
  if y < 0 || x < 0 || y > 11 || x > 11 || world[y][x] != 'land'
    return 0
  end

  #so first we count this tile...
  size = 1
  world[y][x] = 'counted land'
  #then we count all the neighbouring eight tiles
  #(and , of course, their neighbours by the way of recursion)

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, -1, -1)
