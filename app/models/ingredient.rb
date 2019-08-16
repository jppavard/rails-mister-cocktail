class Ingredient < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :doses

  validates :name, presence: true, uniqueness: { allow_blank: true, case_sensitive: false }
end
