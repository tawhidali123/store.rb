class Item < ApplicationRecord
    has_many :shops
    has_many :users, through: :shops

end
