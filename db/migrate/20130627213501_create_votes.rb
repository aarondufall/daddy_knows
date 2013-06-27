class CreateVotes < ActiveRecord::Migration
 def change
  create_table :votes do |t|
    t.integer :user_id
    t.belongs_to :votable, polymorphic: true
  end
 end
end
