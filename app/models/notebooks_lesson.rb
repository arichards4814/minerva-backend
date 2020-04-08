class NotebooksLesson < ApplicationRecord
    belongs_to :notebook
    belongs_to :lesson
end
