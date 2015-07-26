
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

User.create!(first_name: 'ad', last_name:'asd', password: 'dadassdadasdasdas', email: 'sdsddasdas@adadsdas.com')
Category.create!(name: "SPORT" , remote_avatar_url: "http://www.doashait.com/images/image_6.jpg")
Category.create!(name: "IT" , remote_avatar_url: "http://www.doashait.com/images/image_6.jpg")
Category.create!(name: "MOVIE" , remote_avatar_url: "http://19twentythree.com/wp-content/uploads/2013/05/Flippo-bigstock-Movie-Entertainment-Industry-2408152.jpg")
Category.create!(name: "TV" , remote_avatar_url: "http://top10ng.com/wp-content/uploads/2015/04/tv-series.jpg")
Category.create!(name: "SOCIAL" , remote_avatar_url: "http://www.inc.com/uploaded_files/image/970x450/social-pano_37894.jpg")
Category.create!(name: "MUSIC" , remote_avatar_url: "http://insyncatuit.com/wp-content/uploads/2014/02/Abstract-Music-Logo-Music-Wallpapers-HD1.jpg")
Category.create!(name: "COMPUTER" , remote_avatar_url: "http://thumbs.dreamstime.com/x/sick-broken-down-computer-cartoon-23698261.jpg")
Category.create!(name: "HOME" , remote_avatar_url: "http://virtualresults.net/wp-content/uploads/2013/05/selling-your-home-to-relocate.jpg")


UserCategory.create! user_id: 1 , category_id: 1
UserCategory.create! user_id: 1 , category_id: 3
UserCategory.create! user_id: 1 , category_id: 5

32.times do |note|
  Note.create! title: Faker::Name.title , description: Faker::Lorem.sentence , user_id: rand(1..3) , category_id: rand(1..8)
end

32.times do |notecategory|
  NoteCategory.create! note_id: rand(1..32) , category_id: rand(1..8)
end




