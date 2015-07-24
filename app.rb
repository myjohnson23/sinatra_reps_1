require 'bundler'
Bundler.require()




def fake_movie(name, release_year, description)
  {:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end

get '/api/attack_of_the_rubyists' do
  cross_origin
  fake_movie('Attack of the Rubyists','2009','Crazed Ruby programmers attack grandmothers taking care of edlery dogs')
end

get '/api/rubyrubyruby' do
  cross_origin
  fake_movie('Ruby! Ruby! Ruby!','2011','She was a ruby on rails programmer, he was a javaScript programmer, see how they fell for each other over their different approaches to life')
end

get '/api/theratpack' do
  cross_origin
  fake_movie('The Rat Pack: The Return of Sinatra','1987','Sinatra comes back to life and thinks that the brat pack is his old gang the rat pack')
end
