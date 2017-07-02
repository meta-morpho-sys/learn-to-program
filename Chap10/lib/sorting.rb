def sort user_array
  sort_helper user_array, []
end

def find_smallest arr
  smallest, index = arr.each_with_index.min
  arr.delete_at(index)
  [smallest, arr]
end

def sort_helper unsorted, sorted
  if unsorted.empty?
    sorted
  else
    smallest_found, remaining = find_smallest unsorted
    sorted << smallest_found
    sort_helper remaining, sorted
  end
end
