class AddLongDescriptionToPaths < ActiveRecord::Migration[5.0]
  def change
  	add_column :paths, :long_description, :string
  end
end
