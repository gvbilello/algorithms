def quick_sort(num_array)

	if num_array.length == 1
		return num_array
	else
		pivot = num_array.sample
		num_array.delete_at(num_array.index(pivot))
		lower = []
		higher = []
		num_array.each do |num|
			if num <= pivot
				lower << num
			else
				higher << num
			end
		end
		sorted_array = []
		sorted_array << quick_sort(lower) if lower.length > 0
		sorted_array << pivot
		sorted_array << quick_sort(higher) if higher.length > 0
	end

	sorted_array.flatten!
	return sorted_array
end

nums = [1, 5, 8, 12, 19, 4, 31, 18, 7, 10, 2, 9, 11, 76, 99, 54, 23, 30, 72, 65]
p quick_sort(nums)