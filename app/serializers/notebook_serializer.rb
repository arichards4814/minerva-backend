class NotebookSerializer < ActiveModel::Serializer
  #for user just need id and username
  has_one :user
  attributes :id, :title, :material_url, :notes, :lessons
  def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
    }
  end
end
