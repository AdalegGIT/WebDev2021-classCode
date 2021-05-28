class PlacesController < ApplicationController
  before_action :require_login, except: [:index]
  before_action :check_ownership, only: [:edit , :update , :destroy]

  def index
    @places = Place.all
  end


  def show 
    @place = Place.find(params[:id])

  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(
      name: params[:place][:name],
      desc: params[:place][:desc])
    @place.user = current_user

    if @place.save
       redirect_to root_url

    else
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place && @place.update( name: params[:place][:name],
                               desc: params[:place][:desc],
                               user: current_user)
      redirect_to root_url

    else
      render :edit
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to root_url
  end

  def require_login
    unless  session[:user_id]
      redirect_to new_sessions_url
    end
  end

  def check_ownership
    @place = Place.find(params[:id])

    unless current_user == @place.user
      redirect_to root_url
    end
  end


end
