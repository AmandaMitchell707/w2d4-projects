#Time complexity is O(n^2)
def my_min_phase_i(list)
  smallest = list.max
  
  list.each_with_index do |el1, idx1|
    list.each_with_index do |el2, idx2|
      next if idx1 == idx2
      
      if el1 < el2 && el1 < smallest
        smallest = el1
      elsif el2 < smallest
        smallest = el2
      end
    end
  end
  
  smallest
end

#Time complexity is O(n)
def my_min_phase_ii(list)
  smallest = list.max
  
  list.each do |el|
    smallest = el if el < smallest
  end
  
  smallest
end

# Time complexity is O(n^3)
def largest_contiguous_subsum_phase_i(list)
  array = []
  
  i = 0
  until i == list.length
    j = i
    
    until j == list.length
      array << list[i..j]
      j += 1
    end
    i += 1
  end
  
  max = list.min
  array.each do |subarr|
    if subarr.inject(:+) > max
      max = subarr.inject(:+)
    end
  end
  
  max
end

def largest_contiguous_subsum_phase_ii(list)
  max_sum = list.first
  current_sum = 0
  
  list.each do |el|
    current_sum += el
    
    if current_sum > max_sum
      max_sum = current_sum
    end
    
    if current_sum < 0
      current_sum = 0
    end
  end
  
  max_sum
end