class AddLabelIdToPostLabels < ActiveRecord::Migration[7.0]
  def change
    add_column :post_labels, :label_id, :integer
  end
end
