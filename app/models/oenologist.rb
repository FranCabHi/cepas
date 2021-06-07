class Oenologist < ApplicationRecord
    has_many :magazine_oenologists, dependent: :destroy
    has_many :magazines, through: :magazine_oenologists
    has_many :positions, through: :magazine_oenologists

    has_many :wine_oenologists, dependent: :destroy
    has_many :wines, through: :wine_oenologists

    def magazine_name
        magazines.map do |magazine_info|
            magazine_info.name   
        end.join(', ')
    end

    def mag_positions
        positions.map do |mag_position|
            mag_position.position  
        end.uniq.join(', ')
    end 


end
