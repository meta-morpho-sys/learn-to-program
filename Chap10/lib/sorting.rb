def find_smallest arr
  smallest, index = arr.each_with_index.min
  arr.delete_at(index)
  [smallest, arr]
end




