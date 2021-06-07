class MagazineOenologist < ApplicationRecord
  belongs_to :magazine, optional: true
  belongs_to :oenologist, optional: true
  belongs_to :position, optional: true
end
