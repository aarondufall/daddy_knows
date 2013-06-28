class Tag < ActiveRecord::Base 
 	attr_accessible :title, :description

  has_many :question_tags
	has_many :questions, :through => :question_tags


	def self.search_for_autocomplete(text)
    where("name LIKE ?", "%#{text}%").limit(10)
  end

  def to_autocomplete_hash
      {
        id:   id,
        title: title,
      }
  end
end
