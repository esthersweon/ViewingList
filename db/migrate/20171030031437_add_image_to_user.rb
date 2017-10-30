class AddImageToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image_url, :string, :default => "http://voice4thought.org/wp-content/uploads/2016/08/default2-1.jpg"
  end
end
