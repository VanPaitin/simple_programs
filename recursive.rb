def countdown(num)
  puts num
  unless num < 1
    countdown (num - 1)
  end
end
# countdown 50

def factorial(num)
  if num > 1
    num * factorial(num - 1)
  else
    return 1
  end
end

# puts factorial 6

def add_array(arr)
  return 0 if arr.empty?

  if arr.length == 1
    arr.first
  else
    arr[0] + add_array(arr[1..(-1)])
  end
end

# puts add_array [5, 7, 13]

def quick_sort(array)
  return array if array.length <= 1

  pivot = array[0]
  lower_array = []
  higher_array = []

  array[1..(array.length - 1)].each do |element|
    element <= pivot ? lower_array << element : higher_array << element
  end

  quick_sort(lower_array).concat([pivot]).concat(quick_sort(higher_array))
end

print quick_sort([5, 3, 100, 2, 4, 1])
