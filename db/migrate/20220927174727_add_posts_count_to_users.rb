class AddPostsCountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :posts_count, :integer, default: 0 , null: false
    #Ex:- :default =>''
  end
end
