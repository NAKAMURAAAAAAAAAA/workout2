class AddSingleWordToUsers < ActiveRecord::Migration[5.2]
  def change
     add_column :users, :single_word, :text
  end
end
