class Label < ApplicationRecord
    has_many :post_labels
    has_many :posts, through: :post_labels
end
