class RemovePostIdFromLabels < ActiveRecord::Migration[7.0]
  def change
    remove_column :labels, :post_id, :integer
  end
end
