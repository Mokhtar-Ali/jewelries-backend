class Jewelry < ApplicationRecord
    has_many :chains
    has_many :earings
    has_many :rings
    has_many :pendents
end
