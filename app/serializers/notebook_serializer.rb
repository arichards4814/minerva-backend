class NotebookSerializer < ActiveModel::Serializer
  #for user just need id and username
  has_one :user
  attributes :id, :title, :material_url, :notes, :lessons, :pinned
  def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
    }
  end
end
