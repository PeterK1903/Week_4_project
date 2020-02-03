require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/exhibit.rb' )
require_relative( '../models/artist.rb' )
also_reload( '../models/*' )



get '/managers' do
  @exhibits = Exhibit.all()
  @artists = Artist.all()
  erb (:"managers/index")
end

get '/managers/artists' do
  @artists = Artist.all()
  erb (:"managers/artists")
end

get '/managers/artists/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb (:"managers/artists_show")
end

get '/managers/exhibits' do
  @exhibits = Exhibit.all()
  erb (:"managers/exhibits")
end

get '/managers/exhibits/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb (:"managers/exhibits_show")
end

get '/managers/newartist' do
  erb(:"managers/artist_new")
end

post '/managers/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:"managers/create_artist")
end

get '/managers/newexhibit' do
  @artists = Artist.all
  erb(:"managers/exhibit_new")
end

post '/managers/exhibits' do
  @exhibit = Exhibit.new(params)
  @exhibit.save()
  erb(:"managers/create_exhibit")
end

get '/managers/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:"managers/artist_edit")
end

post '/managers/artists/:id/edit' do
  Artist.new(params).update
  redirect to '/managers/artists'
end

get '/managers/exhibits/:id/edit' do
  @artists = Artist.all()
  @exhibit = Exhibit.find(params[:id])
  erb(:"managers/exhibit_edit")
end

post '/managers/exhibits/:id/edit' do
  Exhibit.new(params).update
  redirect to '/managers/exhibits'
end


post '/managers/artists/:id/delete' do
  artist = Artist.find(params['id'])
  artist.delete
  redirect to '/managers/artists'
end

post '/managers/exhibits/:id/delete' do
  exhibit = Exhibit.find(params['id'])
  exhibit.delete
  redirect to '/managers/exhibits'
end
