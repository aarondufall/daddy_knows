class CreateTags < ActiveRecord::Migration
    def change
    create_table :tags do |t|
      t.text :description, 	:null => false
      t.string :title, 	:null => false
      t.integer	:question_tag_id
 
      t.timestamps
    end
  end
end
