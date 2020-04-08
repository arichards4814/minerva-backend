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
      id: self.object.curriculum.id,
      title: self.object.curriculum.title,
      description: self.object.curriculum.description,
      lessons: notebooks
    }
  end

  def notebooks 
      self.object.curriculum.lessons.map do |lesson|
        LessonSerializer.new(lesson).attributes
      end
  end
  # self.object.curriculum.lessons
end
