# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read('/home/ubuntu/workspace/db/movies.csv')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|

    puts row.inspect    
    # puts "id", row['id']
    # puts "name", row['name']
    # puts "year", row['year']
    # puts "summary", row['summary']
    # puts "image_url", row['image_url']
    # puts "genres", row['genres']

    puts "======================================"
end
