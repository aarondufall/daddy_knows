require 'spec_helper'

describe Answer do 

  before(:each) do
    @answer = Answer.new(:content => 'Daddy knows is awesome')
  end

  it "it should be valid when new" do
    @answer.should be_valid
  end
  
  it "it should require content" do
    @answer.content = ""
    @answer.should_not be_valid
  end


end 