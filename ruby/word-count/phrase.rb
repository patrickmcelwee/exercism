class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = {}
    phrase.downcase.split(/\W/).each do |word|
      next if word.empty?
      count[word] ||= 0
      count[word] += 1
    end
    count
  end
end
