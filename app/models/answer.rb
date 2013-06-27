class Answer < ActiveRecord::Base
	
  attr_accessible :content

  belongs_to :question
	belongs_to :user

  validates :content, :presence => true

end