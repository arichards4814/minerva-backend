class Note < ApplicationRecord
    belongs_to :notebook


  validates :content, length: { maximum: 500 }
end
