require_relative 'bubble_sort'
require_relative 'bubble_sort_by'

puts '** The method "bubble_sort" accepts array of numbers and sorts them numericaly **'
puts '** or array of strings and sorts them alphabetically **'
puts
array_of_numbers = [4, 3, 78, 2, 0, 2]
puts '- Testing "bubble_sort" with array of Integers ' + array_of_numbers.to_s
bubble_sort(array_of_numbers)
puts 'Results : ' + array_of_numbers.to_s
puts
array_of_numbers = [2, 1, 340, 100, 12.99, 12.56, 15, 0.34, 3]
puts '- Testing "bubble_sort" with array of Integers & Floats' + array_of_numbers.to_s
bubble_sort(array_of_numbers)
puts 'Results : ' + array_of_numbers.to_s
puts
array_of_strings = %w[hi hello hey barrow available]
puts '- Testing "bubble_sort" with array of Strings ' + array_of_strings.to_s
bubble_sort(array_of_strings)
puts 'Results : ' + array_of_strings.to_s
puts
puts
puts
puts '** The method "bubble_sort_by" accepts ONLY array of strings and sorts them by their size **'
puts
array_of_strings = %w[hi hello hey]
puts '- Testing "bubble_sort_by" with array of Strings ' + array_of_strings.to_s
bubble_sort_by(array_of_strings) do |left, right|
  left.length <=> right.length
end
puts 'Results : ' + array_of_strings.to_s
puts
array_of_strings = %w[your name is Ruby nice to meet you]
puts '- Testing "bubble_sort_by" with array of Strings ' + array_of_strings.to_s
bubble_sort_by(array_of_strings) do |left, right|
  left.length <=> right.length
end
puts 'Results : ' + array_of_strings.to_s
puts
puts
