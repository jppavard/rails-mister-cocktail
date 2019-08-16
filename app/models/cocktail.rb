class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true

end


  # def default_url(*args)
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end
