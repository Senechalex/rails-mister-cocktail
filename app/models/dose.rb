class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end

# class Dose < ApplicationRecord
#   belongs_to :cocktail
#   belongs_to :ingredient
#   validates :description, presence: true
#   validates :ingredient, uniqueness: { scope: :cocktail }
# end
