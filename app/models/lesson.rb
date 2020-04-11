class Lesson < ApplicationRecord
    belongs_to :curriculum

    has_many :notebooks_lessons
    has_many :notebooks, through: :notebooks_lessons


  validates :title, length: { maximum: 20 }
  validates :description, length: { maximum: 200 }
end
