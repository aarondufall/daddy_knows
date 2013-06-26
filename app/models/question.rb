class Question < ActiveRecord::Base
	
  attr_accessible :title, :content, :user_id
  
  belongs_to :user
	has_many :answers
  has_many :question_tags
  has_many :tags, :through => :question_tags

  validates :title, :content, :presence => true
  
  default_scope :order => 'created_at DESC'

  before_save :capitalize_title

  def capitalize_title
    self.title = self.title.capitalize 
  end

	

end