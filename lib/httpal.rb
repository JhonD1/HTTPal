require 'net/http'

uri = URI('https://openlibrary.org/books/OL7353617M.json')
res = Net::HTTP.get_response(uri)

puts res
puts res.body 