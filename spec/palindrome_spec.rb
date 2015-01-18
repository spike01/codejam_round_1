require 'palindrome_finder'

describe PalindromeFinder do

  let(:phrases) { ["madam", "blah", "a man a plan a canal panama"] }

  it 'counts palindromes' do
    expect(subject.count(phrases)).to eql 2
  end

  it 'extracts the palindromes from a text file' do
    expect(subject.extract('./palindromes')).to eq(95)
  end
end
