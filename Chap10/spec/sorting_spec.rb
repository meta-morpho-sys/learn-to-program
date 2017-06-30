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





