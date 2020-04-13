class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :material_url, :curriculum, :lesson_type, :cost, :image_url, :notebooks

  
end
