class Manga < ApplicationRecord
    validates :title, presence: true
    validates :number, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
    validates :img, presence: false
end
