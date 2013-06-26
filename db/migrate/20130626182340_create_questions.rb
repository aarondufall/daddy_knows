class CreateQuestions < ActiveRecord::Migration
   def change
    create_table :questions do |t|
      t.text :content, 	:null => false
      t.string :title, 	:null => false
      t.integer	:user_id
 
      t.timestamps
    end
  end

end
