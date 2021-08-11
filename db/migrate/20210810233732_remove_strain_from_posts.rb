class RemoveStrainFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :strain, :string
  end
end
