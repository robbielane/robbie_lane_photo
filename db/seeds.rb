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
    g = Gallery.create!(name: 'Madison', location: 'Wisconsin')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Madison/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Juneau', location: 'Alaska')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Juneau/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Denver', location: 'Colorado')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Denver/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Canyonlands', location: 'Utah')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Canyonlands/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Iceland', location: 'Iceland')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Iceland/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Treadwell Mines', location: 'Juneau, Alaska')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Treadwell/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Haines', location: 'Alaska')
    puts "Created Gallery #{g.id}: Haines"
    Dir.glob('../robbie_lane_photo_seeds/Haines/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to Haines"
    end

    g = Gallery.create!(name: 'Ice Cave', location: 'Juneau, Alaska')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/IceCave/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Blue Lagoon', location: 'Grindavík, Iceland')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/BlueLagoon/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Mendenhall Glacier', location: 'Juneau, Alaska')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/Mendenhall/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Sunflowers', location: 'Denver, Colorado')
    puts "Created Gallery #{g.id}: Sunflowers"
    Dir.glob('../robbie_lane_photo_seeds/Sunflowers/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to Sunflowers"
    end

    g = Gallery.create!(name: 'Sandy Beach', location: 'Juneau, Alaska')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/SandyBeach/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

    g = Gallery.create!(name: 'Mormon Row', location: 'Grand Teton National Park, Wyoming')
    puts "Created Gallery #{g.id}: #{g.name}"
    Dir.glob('../robbie_lane_photo_seeds/MormonRow/*.jpg') do |image|
      g.pictures.create!(name: image.split('/').last[0..-5], print: false, image: File.open(image))
      puts "Added picture (#{image.split('/').last[0..-5]}) to #{g.name}"
    end

  end
end

Seed.new
