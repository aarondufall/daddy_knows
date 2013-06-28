require 'spec_helper'

describe Tag do 

  it { should be_instance_of(Tag) }
  it { should have_many(:question_tags) }
  it { should have_many(:questions).through(:question_tags) }

  it 'should be able to create a tag' do 
    tag = Tag.create(title: "Javascript", description: "DOM manipulation at it's best")
    tag.should be_valid
  end

  it 'should have a title' do 
    tag = Tag.create(title: "Javascript", description: "DOM manipulation at it's best")
    tag.title.should eq "Javascript"
  end

  it 'title should not be empty' do 
    tag = Tag.create(title: "Javascript", description: "DOM manipulation at it's best")
    tag.title.should_not be_empty
  end

  it 'should have a description' do
    tag = Tag.create(title: "Javascript", description: "DOM manipulation at it's best")
    tag.description.should eq "DOM manipulation at it's best"
  end 

end