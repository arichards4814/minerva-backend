class Tag < ApplicationRecord

    has_many :curriculumstags
     has_many :curriculums, through: :curriculumstags
end
