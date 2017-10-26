class SearchesController < ApplicationController
  response = HTTParty.get('https://api.themoviedb.org/3/search/multi?api_key=7c63b5b2b830539c1cc4b3954b6c8982&language=en-US&page=1&include_adult=false&query=' + queary)

  puts response.body, response.code, response.message, response.headers.inspect

  response.each do |item|
    puts item['user']['screen_name']
  end

end
