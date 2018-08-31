# Time complexity is O(n*n!)
def first_anagram?(first_string, second_string)
  array = []
  
  first_string.split(//).permutation(first_string.length).each do |subarr|
    array << subarr.join
  end
  
  array.include?(second_string)
end
# Time complexity is O(n^2)
def second_anagram?(first_string, second_string)
  first_string.each_char do |ch|
    i = second_string.index(ch)
    second_string = second_string[0...i] + second_string[i + 1..-1] unless i.nil?
  end
  second_string == ""
end
# Time complexity is O(n log n)
def third_anagram?(first_string, second_string)
  first = first_string.chars.sort.join
  second = second_string.chars.sort.join
  first == second
end
# Time complexity is O(n)
def fourth_anagram?(first_string, second_string)
  first_hash = Hash.new(0)
  second_hash = Hash.new(0)
  first_string.each_char { |ch| first_hash[ch] += 1 }
  second_string.each_char { |ch| second_hash[ch] += 1 }
  first_hash == second_hash
end