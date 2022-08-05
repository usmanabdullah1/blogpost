class CreatePostLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :post_labels do |t|

      t.timestamps
    end
  end
end
