require 'rspec'
load "guessing.rb"


describe GuessingGame do
  context "check loading of file" do
    it "should have a method which signals that it works" do 
      GuessingGame.rspec_works.should eq(true)
    end
  end
  context "Basic setup" do
    before(:each) do
      @game = GuessingGame.new(3)
    end
    it "should take a number as part of the initalization parameter" do
      @game.answer.should eq(3)
    end
    it "should have an instance method called guess which takes an integer" do 
      @game.respond_to?(:guess, 2).should eq(true)
    end
    it "should return high when you guess 5" do 
      @game.guess(5).should eq(:high)
    end

    it "should return correct when you guess 3" do
      @game.guess(3).should eq(:correct)
    end

    it "should return low when you guess 2" do
      @game.guess(2).should eq(:low)
    end
  end
end