class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :summary
      t.text :description
      t.string :summary_video
      t.string :thumbnail
      t.string :feature_image
      t.string :support_video
      
      t.timestamps null: false
    end
  end
end
