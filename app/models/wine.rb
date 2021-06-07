class Wine < ApplicationRecord
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists

    def addStrainPercentage(strain_percentage)
        strain_percentage.each do |strain_id, strain_percentage|
            if strain_percentage != ''
                temp_strain = self.wine_strains.where(strain_id: strain_id).first
                temp_strain.strain_percentage = strain_percentage
                temp_strain.save
            end
        end
    end

    def oenologist_name
        oenologists.map do |wine_oenologist|
            wine_oenologist.oeno_name
        end.join(', ')
    end 

    def strainnames_and_percentages
        strain_list = []
        wine_strains.map do |ws|
           strain_list << [ws.strain.strain_name, ws.strain_percentage]
        end

        strain_list.sort_by {|strain| strain[0]}.map do |strain_info|
            "#{strain_info[0]} (#{strain_info[1]}%)"
        end.join (', ')
    end



end