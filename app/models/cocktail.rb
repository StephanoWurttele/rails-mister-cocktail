class Cocktail < ApplicationRecord
    has_many :doses, :dependent => :destroy
    has_many :ingredients, :through => :doses

    validates :name, presence: true, uniqueness: true
    validates :img_url, presence: true, uniqueness: true

end