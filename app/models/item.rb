class Item < ApplicationRecord
    has_many :shops
    has_many :items, through: :shops

end
