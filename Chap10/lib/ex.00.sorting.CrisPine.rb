# We need to sort an list of words
# pick out the smallest word by using "<"
# place the sorted words into a list of already sorted words
# place the rest of the words into a list of still unsorted words


#    words_to_sort = %w{remember the sorting program you wrote here where you asked for a list of words}
# 1. take the smallest word from the words_to_sort


# 2. stick it to the end of the sorted_words
# 3. put all the rest of the words into unsorted_words
# 4. repeat the research of the smallest word and put it into the sorted_array until unsorted_array is empty.


=begin
rec_sort ?
unsorted(words_to_sort)
still_unsorted(unsorted_words)
sorted(sorted_words)
=end


def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do | tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  # Now "smallest" really does point to the smallest element that "unsorted" contained,
  #and all the rest of it is in "still_unsorted"
  sorted.push smallest
  rec_sort still_unsorted, sorted
end

puts(sort(['mama', 'baba', 'fiore']))
