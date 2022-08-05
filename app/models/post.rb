class Post < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :user
    has_many :post_label
    has_many :labels, through: :post_label
    def created_at
        attributes['created_at'].strftime("%b %m")
      end
end
