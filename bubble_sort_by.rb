def bubble_sort_by(array)
  depth = array.size - 1
  loop do
    swap_performed = false
    depth.times do |item_index|
      current_item_is_larger_than_following = yield(array[item_index], array[item_index + 1])
      if current_item_is_larger_than_following.positive?
        array[item_index], array[item_index + 1] = array[item_index + 1], array[item_index]
        swap_performed = true
      end
    end
    depth -= 1
    break unless swap_performed
  end
  array
end

array_of_words = %w[hi hello hey]
bubble_sort_by(array_of_words) do |left, right|
  left.length <=> right.length
end
p array_of_words

array_of_words = %w[your name is Ruby nice to meet you]
bubble_sort_by(array_of_words) do |left, right|
  left.length <=> right.length
end
p array_of_words
