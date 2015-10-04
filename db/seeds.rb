# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Quoteunquoteyelp.destroy_all

Quoteunquoteyelp.create([
						{
							"name" => 'MeowMeowBeenz',
							"description" => 'A fictional Yelp for people from the TV show Community',
							'photourl' => 'https://pbs.twimg.com/profile_images/450234212721754112/O_-yvbDM_400x400.png',
							'url' => 'N/A',
							'year' => 2014,
							'rating' => 0
						}

						])

Quoteunquoteyelp.create([
						{
							'name' => 'Peeple',
							'description' => "YOU KNOW WHAT IT DO FAMALALAM",
							'photourl' => 'https://upload.wikimedia.org/wikipedia/en/a/a8/Peeple_mobile_app_logo.jpg',
							'url' => "http://forthepeeple.com/",
							'year' => 2015,
							'rating'=> 0
						}

						])



