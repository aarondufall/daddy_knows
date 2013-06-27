require 'spec_helper'

describe Question do

  before(:each) do
    @question = Question.new(:title => 'jquery question', :content => 'jquery not responding to ajax')
  end

  it "it should be valid when new" do
    @question.should be_valid
  end
  
  it "it should require a title" do
    @question.title = ""
    @question.should_not be_valid
  end

  it "it should require content" do
    @question.content = ""
    @question.should_not be_valid
  end

  describe '#capitalize_title' do
    #tests failing here. Need to look in more.
    before(:each) do
      @question2 = Question.new(:title => 'jquery', :content => 'jquery not responding to ajax')
    end

    it "it should capitalize the title" do
      @question2.title.should == "Jquery question"
    end
  end

  
end