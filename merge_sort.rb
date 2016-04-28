def merge_sort(array)
	return array if array.size <= 1
	array_first_half = array[0..(array.size/2)-1]
	array_second_half = array[array.size/2..-1]
	a = merge_sort(array_first_half)
	b = merge_sort(array_second_half)

	sorted_array = []

	until a.empty? || b.empty?
		a[0] <= b[0] ? sorted_array << a.shift : sorted_array << b.shift
	end
	sorted_array + a + b
end

array = Array(1..15).shuffle

p "Array to sort => #{array}" 				#"Array to sort => [9, 2, 13, 14, 3, 4, 10, 7, 15, 8, 5, 12, 6, 1, 11]"
p "Sorted array => #{merge_sort(array)}" 	#"Sorted array  => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]"