class Answer < ActiveRecord::Base
	
  attr_accessible :content

  belongs_to :question

  belongs_to :user
  has_many :comments, as: :commentable
  has_many   :votes, :as => :votable


  validates :content, :presence => true

  before_validation :trim_wysiwyg

  private
  #the wysiwyg submits a <br> tag even when content is empty this cleans that up before validation
  def trim_wysiwyg
    content.gsub!(/^<br>?(.*)/, '\1')
  end
  

end