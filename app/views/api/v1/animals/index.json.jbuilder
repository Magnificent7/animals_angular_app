json.array! @animals.each do |animal|
  json.id animal.id
  json.name animal.name
  json.leg_count animal.leg_count
  json.description animal.description
  json.meat_eater animal.meat_eater
end