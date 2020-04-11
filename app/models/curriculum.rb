class Curriculum < ApplicationRecord
    has_many :lessons
    belongs_to :user
    has_many :subscriptions
    has_one_attached :image

    has_many :curriculumstags
    has_many :tags, through: :curriculumstags


  validates :title, length: { maximum: 20 }
  validates :description, length: { maximum: 200 }
end
