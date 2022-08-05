class PostLabel < ApplicationRecord
    belongs_to :label
    belongs_to :post
end
