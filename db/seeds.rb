# db/seeds.rb
user = User.create!(email: 'test@example.com', password: 'password', password_confirmation: 'password')
3.times do |i|
  user.todos.create!(title: "Sample Todo #{i + 1}")
end