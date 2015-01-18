class PalindromeFinder

  def count(phrases)
    phrases.count { |line| palindrome?(line) }
  end

  def extract(file)
    file = File.open(file).read.split(/\r?\n/)
    count(file)
  end

  private

  def palindrome?(text)
    palindrome = text.downcase.gsub(/[\W\-]/, '')
    return false if palindrome == ''
    palindrome.reverse == palindrome
  end
end
