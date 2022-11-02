require 'net/http'

p "Enter URL to get json from: "
user_input = gets.chomp.to_s

uri = URI(user_input)
res = Net::HTTP.get_response(uri)

puts res.body 