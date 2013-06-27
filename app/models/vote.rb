class Vote < ActiveRecord::Base
  attr_accessible :user_id  

  belongs_to :votable, :polymorphic => true
  belongs_to :user



end