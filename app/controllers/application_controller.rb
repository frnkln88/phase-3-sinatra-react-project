class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Hello  World" }.to_json
  end

  get '/movies' do 
    movies = Movie.all 
    movies.to_json(include: :reviews)
  end

  get '/movies/:id' do 
    movie = Movie.find(params[:id])
    movie.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  post '/users' do
    createuser = User.create(
      name: params[:name]
    )
    createuser.to_json
  end

  get '/users/:id' do 
    user = User.find(params[:id])
    user.to_json
  end

  get '/reviews' do 
    reviews = Review.all
    reviews.to_json
  end

  post '/reviews' do
    createreview = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      movie_id: params[:movie_id],
      user_id: params[:user_id]
    )
    createreview.to_json
  end

  get '/reviews/:id' do 
    review = Review.find(params[:id])
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
      comment: params[:comment]
    )
    review.to_json
  end
end
