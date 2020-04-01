# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Curriculum.destroy_all
Notebook.destroy_all
Note.destroy_all
Lesson.destroy_all


a = User.create(username: "The_First1", email: "a@g.com", password_digest: "123")
b = User.create(username: "Boris", email: "v@g.com", password_digest: "123")
c = User.create(username: "Billy", email: "b@g.com", password_digest: "123")

d = Curriculum.create(user_id: a.id, title: "How to Play the Drums", description: "Make your neighbors hate you!")
e = Curriculum.create(user_id: b.id, title: "Learn Adobe Photoshop", description: "Pictures!")
f = Curriculum.create(user_id: c.id, title: "Learn to Swim", description: "Make a splash at your next swim meeting.")
g = Curriculum.create(user_id: c.id, title: "Golf Swing Tutorials", description: "Golf life.")

h = Lesson.create(curriculum_id: d.id, title: "Holding the Sticks", lesson_type: "video", description: "Learn to hold the drumsticks correctly.")
i = Lesson.create(curriculum_id: e.id, material_url: "https://www.youtube.com/watch?v=pFyOznL9UvA", title: "Intro", lesson_type: "video", description: "Learn the tools.")
j = Lesson.create(curriculum_id: d.id, material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI", title: "Breathstroke", lesson_type: "video", description: "Hit the water!")

k = Notebook.create(user_id: a.id, title: "Photoshop Fundementals", material_url: "https://www.youtube.com/watch?v=pFyOznL9UvA")
l = Notebook.create(user_id: a.id, title: "Breathstroke Fundementals", material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI")


