class MoviesController < ApplicationController
    before_action :require_user, only: [:index, :show]
   
           def index
               @movie = Movie.all
           end
   
           def show
               @movie = Movie.find(params[:id])
           end
   
   
           def new
               @movie = Movie.new
           end
   
   
   
           def create
               @movie = Movie.new(movie_params)
               if @movie.save
                   redirect_to movie_path
               end
           end
           def edit
               @movie = Movie.find (params[:id]) 
           end
   
   
           def update
               @movie = Movie.find(params[:id]) 
               if @movie.update_attributes(movie_params)
                   redirect_to movies_path(@movie)
               end
           end
   
           def destroy
               @movie = Movie.find(params[:id])
               @movie.destroy
               redirect_to movies_path
           end
   
   
   private
   
           def movie_params 
               params.required(:movie).permit(:title, :rating, :date)
           end
   
       end