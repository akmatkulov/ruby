require 'sinatra'
require 'movie'
require 'movie_store'

#Создает обьект  MovieStore для обновление файла movies.yml
store = MovieStore.new('movies.yml')

#маршрут
get('/movies') do
  @movie = store.all
  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
  store.save(@movie) # Сохранение обьекта
  redirect 'movies/new' # Отобразить новую, пустую форму
end

get('/movies/:id') do
  id = params['id'].to_i
  @movie = store.find(id)
  erb :show
end