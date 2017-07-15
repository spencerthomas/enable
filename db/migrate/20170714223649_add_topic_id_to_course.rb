class AddTopicIdToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :topic_id, :integer
  end
end
