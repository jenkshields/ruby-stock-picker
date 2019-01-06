def stock_picker(arr)
  best = []
  new_arr = arr.map(&:clone)
  while new_arr.min == new_arr[-1]
    new_arr.pop
  end
  while new_arr.min != new_arr[0]
    new_arr.shift
  end
  best[0] = (arr.index(new_arr.min) + 1)
  best[1] = (arr.index(new_arr.max) + 1)
  return best
end

puts stock_picker([100, 20, 25, 13, 18, 19, 14, 250, 600, 12])