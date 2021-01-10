class UsersController < ApplicationController
  def show
    @user = User.where(email: params['email']).first
    redirect_to(:action => 'index', :controller => 'articles') unless @user
  end
end
