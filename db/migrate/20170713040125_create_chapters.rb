class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|

      t.integer :course_id      
      t.string  :title     
      t.string  :description      
      t.string  :video_url
      t.string	:video_time      
      t.boolean :completed, default: "false"
      t.text 	:notes
      t.text	:transcript
      t.string	:download 

      t.timestamps null: false
    end

    add_index :chapters, :created_at
  end
end
