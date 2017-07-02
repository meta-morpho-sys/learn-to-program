require 'rspec'
require 'sorting'



describe 'find_smallest' do

  it 'finds the smallest item in an array' do
    smallest, rest = find_smallest [1, 2, 3]
    expect(smallest).to eq 1
    expect(rest).to eq [2, 3]
  end

  it 'finds the smallest item in an array strings' do
    smallest, rest = find_smallest %w[let us try this wording eh]
    expect(smallest).to eq 'eh'
    expect(rest).to eq %w[let us try this wording]
  end

end

describe 'sort_helper' do

  it 'exercises the helper that uses two arrays' do

    sorted = [ ] # because there are no sorted items yet
    unsorted = [5,3,6,4,8,1,6,3,8,7,7]  # initially all unsorted

    result = sort_helper(unsorted, sorted)

    expect(result.first).to eq 1
    expect(result.last).to eq 8
    # expect(result.length).to eq unsorted.length
    expect(result.length).to eq 11

  end

  it 'gets the same result after repeating' do

    sorted = [ ] # because there are no sorted items yet
    unsorted = %w[This is also an awesome awesome thing!]  # initially all unsorted

    result = sort_helper(unsorted, sorted)

    sorted2 = [ ] # because there are no sorted items yet
    unsorted2 = result.clone

    result2 = sort_helper(unsorted2, sorted2)

    expect(result).to eq result2
  end

  it 'sorts big shuffled arrays' do
    sorted = []
    arr = (1..1000).to_a
    unsorted = arr.shuffle
    result = sort_helper(unsorted, sorted)
    expect(result).to eq arr
  end

  it 'tests that sort wrapper works' do
    arr = (1..100).to_a
    user_array = arr.reverse
    result = sort user_array
    expect(result).to eq arr
  end

  it 'tests that sort wrapper handles really big input' do
    arr = (1..25_000).to_a
    user_array = arr.reverse
    result = sort user_array
    expect(result).to eq arr
  end

end


# it 'finds the smallest item in an array of strings (using a single result in the test)' do
#   result = find_smallest [1, 2, 3]
#   expect(result).to eq [1, [2, 3]]
# end

