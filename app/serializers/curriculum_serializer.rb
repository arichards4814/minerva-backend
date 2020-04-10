class CurriculumSerializer < ActiveModel::Serializer
  has_one :user
  attributes :id, :title, :description, :image_url, :lessons, :image, :tags
   def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
    }
  end
  def image
    "http://localhost:3000" + rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
