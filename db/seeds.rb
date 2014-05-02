# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create(title:'Orthopedic car seat',
               description: %{<p>
                              The item that you get after car accident.</p>},
               image_url:'carseat.jpg',
               price:500 )

Product.create(title:'Wrist orthosis custom fitted',
               description: %{<p>
                              The another one crazy-expensive item that you typically get after car accident.</p>},
               image_url:'wrist_orthosis.jpg',
               price:600 )

Product.create(title:'Knee orthosis custom fitted',
               description: %{<p>
                              The tird one crazy-expensive item that you typically get after car accident.</p>},
               image_url:'knee_orthosis.jpg',
               price:800 )