class WordFormatter

  def initialize (word)
    @word = word
  end

  #----------- convert word to upcase ---------
  def upcase
    return @word.upcase
  end

  #----------- phrase to camel case ---------
  def camel_case
    @word.split(' ').collect(&:capitalize).join
  end

end