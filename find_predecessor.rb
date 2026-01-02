require "NeoPathfinding"

def find_predessesor(a, b)
  ancestor_group_one = File.readlines("data/predessesors/group_one.txt")
  ancestor_group_two = File.readlines("data/predessesors/group_two.txt")
  ancestor_group_tre = File.readlines("data/predessesors/group_tre.txt")
  
  size_limit = ancestor_group_one.size.to_i, ancestor_group_two.size.to_i, ancestor_group_tre.size.to_i
  
  group_one_limit = size_limit[0]
  group_two_limit = size_limit[1]
  group_two_limit = size_limit[2]

  index = 0
  
  group_one_limit.times do
    current_ancestors = ancestor_group_one[index].strip.to_s
    
    if current_ancestors == a
      $factoid_one = "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"
    
      puts "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"
    else
      puts "#{current_ancestors} is not the current generation of #{b} as its predessesor, therefore: #{a}"
    end
    
    index = index + 1
  end
  
  index = 0
  
  group_two_limit.times do
    current_ancestors = ancestor_group_two[index].strip.to_s

    if current_ancestors == a
      $factoid_two = "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"
    
      puts "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"
    else
      puts "#{current_ancestors} is not the current generation of #{b} as its predessesor, therefore: #{a}"
    end
    
    index = index + 1
  end

  index = 0
  
  group_two_limit.times do
    current_ancestors = ancestor_group_two[index].strip.to_s

    if current_ancestors == a
      $factoid_tre = "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"
    
      puts "#{current_ancestors} is the current generation of #{b} as its predessesor, therefore: #{a}"

    else
      puts "#{current_ancestors} is not the current generation of #{b} as its predessesor, therefore: #{a}"
    end
    
    index = index + 1
  end
end

def analyze_predessecors
  factoid_one = $factoid_one
  factoid_two = $factoid_two
  factoid_tre = $factoid_tre

  2.times do
    get_statistics(:trivia_one, factoid_one,
                   :trivia_two, factoid_two,
                   :trivia_tre, factoid_tre)
                   
                   dynamic_reward_allocation
  end
end

find_predessesor("Guillotine", "Halifax Gibbet")
analyze_predessecors

#thresholding($current_probability, 12, 12)
