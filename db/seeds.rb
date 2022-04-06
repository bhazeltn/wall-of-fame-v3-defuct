# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.f

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'levels.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
    l = Level.new
    l.level = row['Level']
    l.discipline = row['Discipline']
    l.age = row['Age']
    l.save
    puts "#{l.level} #{l.discipline} #{l.age} saved"
end