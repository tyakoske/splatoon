require 'time'

#{battle_type:{stage:time}}

hash = {}

lines = "foo"

lines.each do |line|
  battle_type = "nawabari"
  stage = "mozuku"
  time_from = Time.parse "2013-10-01 23:00"
  time_to   = Time.parse "2013-10-01 24:00"
  duration = time_to - time_from
  hash[battle_type] = {} if hash[battle_type].nil?
  hash[battle_type][stage] = 0 if hash[battle_type][stage].nil?
  hash[battle_type][stage] += duration
end

print hash
