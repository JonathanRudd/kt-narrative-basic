class Killteam < ApplicationRecord
  belongs_to :user
  has_many :batreps, dependent: :destroy
  has_many_attached :images
end
