# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach('db/sample_data/users.csv', headers: true) do |row|
  User.create(
    id: row['id'],
    name: row['name'],
    image: row['image'],
    email: row['email'],
    password: row['password']
  )
end

CSV.foreach('db/sample_data/venues.csv', headers: true) do |row|
  Venue.create(
    id: row['id'],
    name: row['name'],
    latitude: row['latitude'],
    longitude: row['longitude'],
    url: row['url'],
    shop_image1: row['shop_image1'],
    shop_image2: row['shop_image2'],
    address: row['address'],
    tel: row['tel'],
    opening_hours: row['opening_hours'],
    nearest_station: row['nearest_station'],
    minutes_on_foot: row['minutes_on_foot'],
    shop_description: row['shop_description'],
    party_fee: row['party_fee']
  )
end

CSV.foreach('db/sample_data/events.csv', headers: true) do |row|
  Event.create(
    id: row['id'],
    title: row['title'],
    date: row['date'],
    start_time: row['start_time'],
    end_time: row['end_time'],
    fee: row['fee'],
    venue_id: row['venue_id'],
    organizer_id: row['organizer_id']
  )
end

CSV.foreach('db/sample_data/participants.csv', headers: true) do |row|
  Participant.create(
    id: row['id'],
    user_id: row['user_id'],
    event_id: row['event_id']
  )
end

CSV.foreach('db/sample_data/comments.csv', headers: true) do |row|
  Comment.create(
    id: row['id'],
    content: row['content'],
    image: row['image'],
    user_id: row['user_id'],
    event_id: row['event_id']
  )
end
