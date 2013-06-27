require 'spec_helper'

describe Answer do 

  it { should be_instance_of(Answer) }

  it { should belong_to(:question).class_name(Question) }
  it { should belong_to(:user).class_name(User) }

  it "it should require content" do
    answer = Answer.new(:content => 'Daddy knows is awesome')
    answer.content = ""
    answer.should_not be_valid
  end


end 