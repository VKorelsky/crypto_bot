require "dotenv/load"
require "bittrex"

Bittrex.config do |c|
  c.key = ENV['API_KEY']
  c.secret = ENV['API_SECRET']
end

Bittrex::Summary.all.each do |market|
  puts market
  puts ""
end
