require File.dirname(__FILE__) + '/../../spec_helper'

describe "Standard Library" do
  describe "addition operator" do
    before :each do
      @interpreter = Flea::Interpreter.new
    end
    
    it "should add several numbers" do
      result = @interpreter.run('(+ 1 2 3)')
      result.should == 6
    end
    
    it "should evaluate its arguments before adding them" do
      result = @interpreter.run('
        (define a 2)
        (+ a a a)
      ')
      result.should == 6
    end
    
  end
end