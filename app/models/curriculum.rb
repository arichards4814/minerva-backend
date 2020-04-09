class Curriculum < ApplicationRecord
    has_many :lessons
    belongs_to :user
    has_many :subscriptions
    has_one_attached :image
end
