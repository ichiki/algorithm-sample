# Bubble sort
# 隣あうデータを比較し、並べ替える
#

def bubble_sort(arr)
  arr_copy = arr.dup
  arr_length = arr.length - 1

  (0...arr_length).each { |n|
    (0...(arr_length - n)).each { |left|
      right = left + 1
      # 要素の入れ替え
      arr_copy[left], arr_copy[right] = arr_copy[right], arr_copy[left] if arr_copy[left] > arr_copy[right]
    }
  }
  arr_copy
end

arr = 10.times.map{ rand(100) }
sorted_arr = bubble_sort(arr)
puts sorted_arr
