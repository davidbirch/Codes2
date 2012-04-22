# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

# import the data for divisions
CSV.open("db/seed data/divisions.csv", "r").each do |row|
  Division.create(
    :code => row[0],
    :description => row[1],
    :overview => row[2]
  )
end

# import the data for subdivisions
CSV.open("db/seed data/subdivisions.csv", "r").each do |row|
  Subdivision.create(
    :code => row[0],
    :description => row[1],
    :division_code => row[2],
    :division_id => Division.where("code = ?", row[2]).first["id"]
  )
end

# import the data for groups
CSV.open("db/seed data/groups.csv", "r").each do |row|
  Group.create(
    :code => row[0],
    :description => row[1],
    :subdivision_code => row[2],
    :subdivision_id => Subdivision.where("code = ?", row[2]).first["id"]
  )
end

# import the data for classifications
CSV.open("db/seed data/classifications.csv", "r").each do |row|
  Classification.create(
    :code => row[0],
    :description => row[1],
    :group_code => row[2],
    :group_id => Group.where("code = ?", row[2]).first["id"]
  )
end

# import the data for primary activities
CSV.open("db/seed data/primary_activities.csv", "r").each do |row|
  PrimaryActivity.create(
    :description => row[0],
    :classification_code => row[1],
    :classification_id => Classification.where("code = ?", row[1]).first["id"]
  )
end
