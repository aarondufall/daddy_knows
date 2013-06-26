class CreateAnswers < ActiveRecord::Migration
   def change
    create_table :answers do |t|
      t.text :content,		:null => false
      t.integer	:user_id
      t.integer :question_id
      t.boolean :correct, :default => false

      t.timestamps
    end
  end

end
