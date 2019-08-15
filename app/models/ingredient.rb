class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: { allow_blank: true, case_sensitive: false }
end
