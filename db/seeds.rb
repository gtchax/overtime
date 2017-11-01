require 'faker'

@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User created"

100.times do 
    Post.create!(
        date: Faker::Time.between(30.days.ago, Date.today, :all),
        rationale: Faker::SiliconValley.quote,
        user_id: @user.id
    )

end


puts "#{Post.count} posts have been created"
