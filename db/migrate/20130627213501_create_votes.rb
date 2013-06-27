class CreateVotes < ActiveRecord::Migration
 def change
  create_table :votes do |to|
    t.integer :user_id
    t.belongs_to :votable, polymorphic: true
  end
 end
end
