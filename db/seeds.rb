require 'faker'

100.times do 
    Post.create!(
        date: Faker::Time.between(30.days.ago, Date.today, :all),
        rationale: Faker::SiliconValley.quote
    )

end

puts "#{Post.count} posts have been created"
