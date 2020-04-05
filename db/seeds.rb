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

d = Curriculum.create(user_id: a.id, title: "How to Play the Drums", description: "Make your neighbors hate you!", image_url: "https://images.unsplash.com/photo-1519892300165-cb5542fb47c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
e = Curriculum.create(user_id: b.id, title: "Learn Adobe Photoshop", description: "Pictures!", image_url: "https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/bbdedd58-96bf-11e6-ab2f-00163ed833e7/1034221620/adobe-photoshop-smart-object-to-layer.png")
f = Curriculum.create(user_id: c.id, title: "Learn to Swim", description: "Make a splash at your next swim meeting.", image_url: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/5+Reasons+to+Try+Swimming/swimmer-carousel.jpg")
g = Curriculum.create(user_id: c.id, title: "Golf Swing Tutorials", description: "Golf life.", image_url: "https://www.golf.com/wp-content/uploads/2019/12/GettyImages-1195347248-960x540.jpg")
z = Curriculum.create(user_id: a.id, title: "Raising Kittens", description: "Take care of kittens!!!", image_url: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2018/08/kittens-440377.jpg?h=f6a7b1af&itok=BsOxsqrx")

x = Curriculum.create(user_id: b.id, title: "Learn Spanish", description: "Spanish!", image_url: "https://dp4g669tqdae4.cloudfront.net/content/uploads/2019/09/12161658/Espanol.-Translation-Spanish.-Language-hand-drawn-doodles-and-lettering.-1087621188_7013x4954.jpg")
y = Curriculum.create(user_id: c.id, title: "Learn to Speak German", description: "Learn to speak German in 10 hours with amazing videos and blogs.", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png")

v = Curriculum.create(user_id: c.id, title: "Learn Basic Photography", description: "Learn the basics of how to use a camera.", image_url: "https://i.pcmag.com/imagery/reviews/03lo9RsLzRw3txoeExNaEHW-38..v_1574731241.jpg")

meditation = Curriculum.create(user_id: c.id, title: "Meditation", description: "Here's a bunch of videos teaching you how to meditate!", image_url: "https://media.npr.org/assets/img/2014/01/07/mindfulness_wide-b20c3525971d5796eba9ad993463fffe8faf2bcb-s800-c85.jpg")


h = Lesson.create(curriculum_id: d.id, title: "Holding the Sticks", lesson_type: "video", description: "Learn to hold the drumsticks correctly.", image_url: "https://www.straitmusic.com/images/product/medium/1004-TX2BW_74760.jpg")
Lesson.create(curriculum_id: d.id, title: "Doing a Drumroll", lesson_type: "video", description: "Rat tat tat.", image_url: "https://www.straitmusic.com/images/product/medium/1004-TX2BW_74760.jpg")
Lesson.create(curriculum_id: d.id, title: "Anatomy of a Drumkit", lesson_type: "video", description: "Learn to hold the drumsticks correctly.", image_url: "https://media.kennysmusic.co.uk/media/catalog/product/cache/2/image/1500x/040ec09b1e35df139433887a97daa66f/v/a/vad506_main.jpg")


i = Lesson.create(curriculum_id: e.id, material_url: "https://www.youtube.com/watch?v=pFyOznL9UvA", title: "Intro", lesson_type: "video", description: "Learn the tools.")
j = Lesson.create(curriculum_id: f.id, material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI", title: "Breathstroke", lesson_type: "video", description: "Hit the water!", image_url: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/5+Reasons+to+Try+Swimming/swimmer-carousel.jpg")

xx = Lesson.create(curriculum_id: f.id, material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI", title: "Is water good for you?", lesson_type: "video", description: "Water is good for you!", image_url: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/5+Reasons+to+Try+Swimming/swimmer-carousel.jpg")
xxx = Lesson.create(curriculum_id: f.id, material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI", title: "Diving", lesson_type: "video", description: "Learn to dive!", image_url: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/5+Reasons+to+Try+Swimming/swimmer-carousel.jpg")

k = Notebook.create(user_id: a.id, title: "Photoshop Fundementals", material_url: "https://www.youtube.com/watch?v=pFyOznL9UvA")
l = Notebook.create(user_id: a.id, title: "Breathstroke Fundementals", material_url: "https://www.youtube.com/watch?v=QGZ8rIy-YtI")


