require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
  	self.end_with?("?")
  end

  def exclamation?
  	self.end_with?("!")
  end

  def count_sentences
  	splitSentence = self.split(/[.!?]/)
  	splitSentence.delete_if do |word|
  		word == ""
  	end
  	splitSentence.length
  end
end