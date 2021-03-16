require 'faker'
Post.destroy_all
User.destroy_all
scrubs = ["John Dorian", "Chris Turk", "Elliot Reid"]

scrubs.each do |scrub|
  User.create(
    email: "#{scrub.split.join(".")}@gmail.com",
    password: "123456"
  )
end

User.all.each do |user|
  rand(1..3).times do
    Post.create(
      title: Faker::Book.title,
      content: Faker::GreekPhilosophers.quote,
      user: user
    )
  end
end
