class RemoveIndexFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :sub_id
  end
  remove_index(:posts, [:sub_id, :author_id])
end
