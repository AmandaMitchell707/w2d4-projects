# Time complexity is O(n^3)
def bad_two_sum?(arr, target)
  arr.combination(2).each do |combo|
    return true if combo.inject(:+) == target
  end
  
  false
end

def okay_two_sum?(arr, target)
  arr.each_with_index do |el, i|
    return true if bsearch(arr[i + 1..-1], target - el)
  end
end

def bsearch(arr, target)
  
end