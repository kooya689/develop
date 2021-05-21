class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #ツイートの内容を表示する
    @tweets = @user.tweets

  end
end
