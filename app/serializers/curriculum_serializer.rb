class CurriculumSerializer < ActiveModel::Serializer
  has_one :user
  attributes :id, :title, :description, :image_url, :lessons
   def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
    }
  end
end
