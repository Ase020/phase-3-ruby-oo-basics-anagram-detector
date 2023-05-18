class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def match arr
    arr.select {|anagram| anagram.downcase.chars.sort == word.downcase.chars.sort}
  end
end

array = %w[enlists google inlets banana]

listen = Anagram.new('listen')
puts listen.match array