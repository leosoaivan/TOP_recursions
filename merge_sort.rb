require 'pry'

def merge_sort(arr)
	if arr.length <= 1
		return arr
	else
		arr_A = merge_sort(arr[0...arr.length/2])
    arr_B = merge_sort(arr[arr.length/2..-1])
	end

	return merge(arr_A, arr_B)
end

def merge(arr_A, arr_B)
	results = []
	while !arr_A.empty? && !arr_B.empty?
		if arr_A[0] <= arr_B[0]
			results << arr_A.shift
		else
			results << arr_B.shift
		end
    binding.pry
	end

	while arr_A != NIL
		results << arr_A[0]
		arr_A = arr_A[1..-1]
	end

	while arr_B != NIL
		results << arr_B[0]
		arr_B = arr_B[1..-1]
	end

	return results
end

#merge_sort([9, 3, 14, 100, 25, 7, 19, 11, 0])
