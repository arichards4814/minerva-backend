class Notebook < ApplicationRecord
    belongs_to :user
    has_many :notes

    has_many :notebooks_lessons
    has_many :lessons, through: :notebooks_lessons


  validates :title, length: { maximum: 20 }
end
