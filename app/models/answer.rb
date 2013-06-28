class Answer < ActiveRecord::Base
	
  attr_accessible :content

  belongs_to :question

  belongs_to :user
  has_many :comments, as: :commentable
  has_many   :votes, :as => :votable


  validates :content, :presence => true
  validate :not_empty

  def not_empty
  	errors.add(:content, "Must not be empty") if content == "<br>"
  end

end