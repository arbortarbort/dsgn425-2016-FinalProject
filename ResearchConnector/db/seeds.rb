# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# Seeding the worldctrytable table with data
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'worldctrytable.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Worldctrytable.new
#   t.COR_id = row['COR_id']
#   t.COR = row['COR']
#   t.COR_foreignkey = row['COR_foreignkey']
#   t.save
#   puts "#{t.COR_id}, #{t.COR} saved"
# end
# puts "There are now #{Worldctrytable.count} rows in the transactions table"


# Seeding the africanctrytable table with data
csv_text = File.read(Rails.root.join('lib', 'seeds', 'africanctrytable.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  t = Africanctrytable.new
  t.AAC_id = row['AAC_id']
  t.AAC = row['AAC']
  t.AAC_foreignkey = row['AAC_foreignkey']
  t.save
  puts "#{t.AAC_id}, #{t.AAC} saved"
end
puts "There are now #{Africanctrytable.count} rows in the transactions table"
