class GuessingGame
  attr_accessor :answer
  def self.rspec_works
    true
  end
  def initialize(answer)
    self.answer = answer
  end

  def guess(guess)
    if guess == answer
      return :correct
    elsif guess > answer
      return :high
    else
      return :low
    end
  end
end