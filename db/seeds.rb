20.times do
    User.create(email: Faker::Internet.email, password: "pundit")
end

100.times do
   Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraphs(5), user: User.all.sample)
end
