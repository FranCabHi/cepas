class Magazine < ApplicationRecord
    has_many :magazine_oenologists, dependent: :destroy
    has_many :oenologists, through: :magazine_oenologists
    has_many :positions, through: :magazine_oenologists
end
