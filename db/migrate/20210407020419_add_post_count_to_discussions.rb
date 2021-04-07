class AddPostCountToDiscussions < ActiveRecord::Migration[6.1]
  def change
    add_column :discussions, :posts_count, :integer, defulat: 0
  end
end
