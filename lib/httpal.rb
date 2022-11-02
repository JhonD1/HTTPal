require 'net/http'

def continue?(request_more)
 request_more.downcase == 'y'
end

loop do 
  p "Enter URL to get json from: "
  user_input = gets.chomp.to_s

  uri = URI(user_input)
  res = Net::HTTP.get_response(uri)

  puts res.body 

  p "Request again? (Y/N): "
  answer = gets.chomp

  continue = continue?(answer)
  if !continue
    break
  end
end