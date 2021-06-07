class Position < ApplicationRecord
    has_many :magazine_oenologists, dependent: :destroy
    has_many :magazines, through: :magazine_oenologists
    has_many :oenologists, through: :magazine_oenologists
end
