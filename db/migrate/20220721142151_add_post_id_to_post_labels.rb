class AddPostIdToPostLabels < ActiveRecord::Migration[7.0]
  def change
    add_column :post_labels, :post_id, :integer
  end
end
