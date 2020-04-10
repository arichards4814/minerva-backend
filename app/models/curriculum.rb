class Curriculum < ApplicationRecord
    has_many :lessons
    belongs_to :user
    has_many :subscriptions
    has_one_attached :image

    has_many :curriculumstags
    has_many :tags, through: :curriculumstags
end
