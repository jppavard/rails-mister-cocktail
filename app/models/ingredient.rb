class Ingredient < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :doses, dependent: :destroy
  validates :photo, presence: true
  validates :name, presence: true, uniqueness: { allow_blank: true, case_sensitive: false }
end
