def bubble_sort(array)
  depth = array.size - 1
  loop do
    swap_performed = false
    depth.times do |item_index|
      if array[item_index] > array[item_index + 1]
        array[item_index], array[item_index + 1] = array[item_index + 1], array[item_index]
        swap_performed = true
      end
    end
    depth -= 1
    break unless swap_performed
  end
  array
end
