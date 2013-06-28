require 'spec_helper'

describe Comment do 

  it { should be_instance_of(Comment) }
  it { should belong_to(:user) }
  it { should belong_to(:commentable) }
  it { should have_many(:votes) }
  it { should validate_presence_of(:content) }

  it 'should be able to create a comment' do
    pending 
  end

  it 'should have a commentable parent object' do 
    pending
  end

end