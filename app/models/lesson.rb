class Lesson < ApplicationRecord
    belongs_to :curriculum

    has_many :notebooks_lessons
    has_many :notebooks, through: :notebooks_lessons
end
