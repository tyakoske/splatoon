
require 'time'
require 'yaml'
#{battle_type:{stage:time}}

e_e = "Windows31J"

p "========================"
#val = ARGF.each_line.each_slice(4).take(4)
ARGF.each_line.each_slice(4).each do |dates,battle_type,stages,other|
  p battle_type.encoding
  #p "#{dates} #{battle_type.encode e_e} #{stages.encode e_e}"
  p "#{dates} #{battle_type} #{stages}"
end

#print val
print "-------------------"

hash = {}

lines = ["roo","bar"]
count = 0
total_duration = 0

lines.each do |line|
  battle_type = "nawabari"
  stage = "mozuku"
  time_from = Time.parse "2013-10-01 23:00"
  time_to   = Time.parse "2013-10-01 24:00"
  duration = time_to - time_from
  hash[battle_type] = {} if hash[battle_type].nil?
  hash[battle_type][stage] = {} if hash[battle_type][stage].nil?
  hash[battle_type][stage][:total] = 0 if hash[battle_type][stage][:total].nil?
  hash[battle_type][stage][:time_list] = [] if hash[battle_type][stage][:time_list].nil?

  hash[battle_type][stage][:time_list].push [time_from, time_to]
  hash[battle_type][stage][:total] += duration

  count += 1
  total_duration += duration
end

print hash
print "average#{total_duration/count}"
