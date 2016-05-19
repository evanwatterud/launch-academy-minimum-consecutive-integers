def minimum_consecutive_integers(array)
  integers = 0

  array.each_with_index do |number, index|
    if index > 0
      integers += (number - array[index - 1]).abs - 1
    end
  end

  return integers
end

puts minimum_consecutive_integers([1, 3])
puts minimum_consecutive_integers([2, 5])
puts minimum_consecutive_integers([-1, 4])
puts minimum_consecutive_integers([1, 3, 5])
puts minimum_consecutive_integers([1, 3, 5, 7])
puts minimum_consecutive_integers([-3, -5, -7])
puts minimum_consecutive_integers([5, 2])
