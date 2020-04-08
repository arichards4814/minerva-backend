class SubscriptionSerializer < ActiveModel::Serializer
  attributes :curriculum, :user
   def user
    {
      id: self.object.user.id,
      username: self.object.user.username,
    }
  end
  def curriculum
    {
      lessons: self.object.curriculum.lessons
    }
    end
end
