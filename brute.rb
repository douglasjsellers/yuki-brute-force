#!/usr/bin/env ruby

def print_tower(tower)
  tower.reverse.each do |num|
    print_level( num )
  end
end

def print_level( number )
  number = number + 1
  stars = "*" * number
  puts stars
end


random_rings = (0..4).to_a.sort{ rand() - 0.5 }[0..4]
tower = [5]

while( !random_rings.empty? )
  random_ring = (rand() * random_rings.length ).to_i
  puts ""
  print_level( random_rings[random_ring] )
  print_tower( tower )

  if( ( tower.last - random_rings[random_ring]) == 1 )
    tower << random_rings[random_ring]
    random_rings[random_ring] = nil
    random_rings.compact!
    puts "Yes!!!!"
  else
    puts "No :-("
  end
  puts "------------"

end





