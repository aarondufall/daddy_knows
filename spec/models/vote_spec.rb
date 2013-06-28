require 'spec_helper'

describe Vote do
  it {should be_instance_of(Vote) }
  it {should belong_to(:votable) }
  it {should belong_to(:user) }

  it 'should be able to create a new vote' do 
    pending
  end

  it 'should require a user' do
    pending
  end

  it 'should require a votable object' do 
    pending
  end
end