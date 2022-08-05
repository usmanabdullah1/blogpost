class AddPostIdToLabels < ActiveRecord::Migration[7.0]
  def change
    add_column :labels, :post_id, :integer
    add_index :labels, :post_id
  end
end
