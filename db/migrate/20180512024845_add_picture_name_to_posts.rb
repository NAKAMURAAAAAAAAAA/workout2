class AddPictureNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :picture_name, :string
  end
end
