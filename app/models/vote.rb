class Vote < ActiveRecord::Base
  attr_accessible :user_id , :value

  validates_inclusion_of :value, in: [1, -1]
  belongs_to :votable, :polymorphic => true
  belongs_to :user



end