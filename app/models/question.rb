class Question < ActiveRecord::Base
	
  attr_accessible :title, :content, :user_id
  
  belongs_to :user
	has_many :answers
  has_many :question_tags
  has_many :tags, :through => :question_tags
  has_many :votes, :as => :votable

  validates :title, :content, :presence => true
  
  default_scope :order => 'created_at DESC'

  before_save :capitalize_title

  def capitalize_title
    self.title.capitalize!
  end

  def tag_tokens=(tag_ids)
    self.tags.delete_all
    self.tags << tag_ids.split(",").map { |id| Tag.find_or_create_by_id(id.to_i) }
  end

  def tag_tokens
    tags.map &:to_autocomplete_hash
  end
end