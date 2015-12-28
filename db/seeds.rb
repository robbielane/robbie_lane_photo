# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Seed
  def initialize
    create_user
    create_galleries
  end

  def create_user
    User.create!(name: 'Robbie Lane', email: 'lane.robbie@gmail.com', username: 'robbie', password: 'pass')
    puts "Created User 1: Robbie"
  end

  def create_galleries
    h = Gallery.create!(name: 'Haines', location: 'Haines, Alaska')
    puts "Created Gallery 1: Haines"
    Dir.glob('/Users/robbielane/code/robbie_lane_photo_seeds/Haines/*.jpg') do |image|
      h.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to Haines"
    end

    s = Gallery.create!(name: 'Sunflowers', location: 'Denver, Colorado')
    puts "Created Gallery 2: Sunflowers"
    Dir.glob('/Users/robbielane/code/robbie_lane_photo_seeds/Sunflowers/*.jpg') do |image|
      s.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to Sunflowers"
    end
  end
end

Seed.new
