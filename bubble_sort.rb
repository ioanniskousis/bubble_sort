def bubble_sort(array)
  depth = array.size - 1
  loop do
    swap_performed = false
    depth.times do |item_index|
      current_item = array[item_index]
      folowing_item = array[item_index + 1]
      if current_item > folowing_item
        array[item_index], array[item_index + 1] = array[item_index + 1], array[item_index]
        swap_performed = true
      end
    end
    depth -= 1
    break unless swap_performed
  end
  array
end

array_of_numbers = [4, 3, 78, 2, 0, 2]
bubble_sort(array_of_numbers)
p array_of_numbers

array_of_numbers = [2, 1, 340, 100, 12.99, 12.56, 15, 0.34, 3]
bubble_sort(array_of_numbers)
p array_of_numbers
