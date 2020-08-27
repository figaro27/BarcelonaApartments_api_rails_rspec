class Apartment < ApplicationRecord

    validates_presence_of :title
    validates_presence_of :price
    validates_presence_of :sqm
    validates_presence_of :numofbed
    validates_presence_of :numofbath
    validates_presence_of :picture

end
