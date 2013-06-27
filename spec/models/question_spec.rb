require 'spec_helper'

describe Question do

  it { should be_instance_of(Question) }

  it { should belong_to(:user).class_name(User) }
  it { should have_many(:answers) }
  it { should have_many(:question_tags) }
  it { should have_many(:tags).through(:question_tags) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }

  context '#capitalize_title' do
    it "it should capitalize the title" do 
      question = Question.create(:title => 'jquery question', :content => 'jquery not responding to ajax')
      question.title.should eq "Jquery question"
    end
  end

end