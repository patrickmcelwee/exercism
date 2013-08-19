class Anagram
  def initialize(initial_word)
    @initial_word = initial_word.downcase
    @characters = comparable_characters @initial_word
  end

  def match(possible_anagrams)
    possible_anagrams.keep_if do |candidate|
      not_the_same_word?(candidate) && has_the_same_characters?(candidate)
    end
  end

  private
  attr_reader :initial_word, :characters

  def not_the_same_word?(word)
    word.downcase != initial_word
  end

  def has_the_same_characters?(candidate)
    comparable_characters(candidate) == characters
  end

  def comparable_characters(word)
    word.downcase.chars.sort
  end
end
