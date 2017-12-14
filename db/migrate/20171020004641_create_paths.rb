class CreatePaths < ActiveRecord::Migration[5.0]
  def change
    create_table :paths do |t|
      t.string :title
      t.text :description
      t.string :cover_image
      t.string :length
      t.integer :course_id

      t.timestamps
    end

    add_index :paths, :course_id
  end
end
