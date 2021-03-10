class Api::UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(params[:id])
      render "show.json.jb"
    else
      render :json => {:message => "you must be logged in to see a user's profile." }, :status => :unauthorized
    end
  end

  def create
    user = User.new(
      :name => params[:name],
      :email => params[:email],
      :password => params[:password],
      :password_confirmation => params[:password_confirmation],
    )
    if user.save
      render :json => { :message => "User created successfully!" }, :status => :created
    else
      render :json => { :errors => user.errors.full_messages }, :status => :bad_request
    end

  end


end
