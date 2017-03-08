class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 }
    validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_blank: true }
    validates :email, length: { maximum: 255 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i , allow_blank: true}
end
